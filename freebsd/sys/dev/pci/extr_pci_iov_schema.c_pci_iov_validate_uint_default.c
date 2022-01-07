
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct config_type_validator {scalar_t__ limit; } ;
typedef int nvlist_t ;


 int DEFAULT_SCHEMA_NAME ;
 int EINVAL ;
 int nvlist_exists_number (int const*,int ) ;
 scalar_t__ nvlist_get_number (int const*,int ) ;

__attribute__((used)) static int
pci_iov_validate_uint_default(const struct config_type_validator * validator,
   const nvlist_t *param)
{
 uint64_t defaultVal;

 if (!nvlist_exists_number(param, DEFAULT_SCHEMA_NAME))
  return (EINVAL);

 defaultVal = nvlist_get_number(param, DEFAULT_SCHEMA_NAME);
 if (defaultVal > validator->limit)
  return (EINVAL);
 return (0);
}
