
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_type_validator {int (* validate ) (struct config_type_validator const*,int const*,char const*) ;} ;
typedef int nvlist_t ;


 int KASSERT (int ,char*) ;
 char* nvlist_get_string (int const*,char*) ;
 struct config_type_validator* pci_iov_schema_find_validator (char const*) ;
 int stub1 (struct config_type_validator const*,int const*,char const*) ;

__attribute__((used)) static int
pci_iov_schema_validate_param(const nvlist_t *schema_param, const char *name,
    const nvlist_t *config)
{
 const struct config_type_validator *validator;
 const char *type;

 type = nvlist_get_string(schema_param, "type");
 validator = pci_iov_schema_find_validator(type);

 KASSERT(validator != ((void*)0),
     ("Schema was not validated: Unknown type %s", type));

 return (validator->validate(validator, config, name));
}
