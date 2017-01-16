class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_namae, :last_name])
   # devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name)
   # devise_parameter_sanititer.for(:account_update).push(:first_name, :last_name) 
  end

end
