
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_type_validator {int dummy; } ;
typedef int nvlist_t ;


 int EINVAL ;
 int nvlist_exists_bool (int const*,char const*) ;

__attribute__((used)) static int
pci_iov_schema_validate_bool(const struct config_type_validator * validator,
   const nvlist_t *config, const char *name)
{

 if (!nvlist_exists_bool(config, name))
  return (EINVAL);
 return (0);
}
