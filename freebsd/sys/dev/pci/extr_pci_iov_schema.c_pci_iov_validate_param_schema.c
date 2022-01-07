
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_type_validator {int (* default_validate ) (struct config_type_validator const*,int const*) ;} ;
typedef int nvlist_t ;


 int DEFAULT_SCHEMA_NAME ;
 int EINVAL ;
 int REQUIRED_SCHEMA_NAME ;
 int TYPE_SCHEMA_NAME ;
 scalar_t__ nvlist_exists (int const*,int ) ;
 int nvlist_exists_bool (int const*,int ) ;
 int nvlist_exists_string (int const*,int ) ;
 char* nvlist_get_string (int const*,int ) ;
 struct config_type_validator* pci_iov_schema_find_validator (char const*) ;
 int stub1 (struct config_type_validator const*,int const*) ;

__attribute__((used)) static int
pci_iov_validate_param_schema(const nvlist_t *schema)
{
 const struct config_type_validator *validator;
 const char *type;
 int error;


 if (!nvlist_exists_string(schema, TYPE_SCHEMA_NAME))
  return (EINVAL);
 type = nvlist_get_string(schema, TYPE_SCHEMA_NAME);

 validator = pci_iov_schema_find_validator(type);
 if (validator == ((void*)0))
  return (EINVAL);


 if (nvlist_exists(schema, DEFAULT_SCHEMA_NAME)) {
  error = validator->default_validate(validator, schema);
  if (error != 0)
   return (error);


  if (nvlist_exists(schema, REQUIRED_SCHEMA_NAME))
   return (EINVAL);
 }


 if (nvlist_exists(schema, REQUIRED_SCHEMA_NAME)) {
  if (!nvlist_exists_bool(schema, REQUIRED_SCHEMA_NAME))
   return (EINVAL);
 }

 return (0);
}
