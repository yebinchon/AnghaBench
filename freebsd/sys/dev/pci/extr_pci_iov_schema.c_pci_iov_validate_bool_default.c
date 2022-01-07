
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_type_validator {int dummy; } ;
typedef int nvlist_t ;


 int DEFAULT_SCHEMA_NAME ;
 int EINVAL ;
 int nvlist_exists_bool (int const*,int ) ;

__attribute__((used)) static int
pci_iov_validate_bool_default(const struct config_type_validator * validator,
   const nvlist_t *param)
{

 if (!nvlist_exists_bool(param, DEFAULT_SCHEMA_NAME))
  return (EINVAL);
 return (0);
}
