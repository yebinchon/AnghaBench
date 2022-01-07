
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct config_type_validator {int dummy; } ;
typedef int nvlist_t ;


 int EINVAL ;
 size_t ETHER_ADDR_LEN ;
 scalar_t__ ETHER_IS_MULTICAST (int const*) ;
 int nvlist_exists_binary (int const*,char const*) ;
 int * nvlist_get_binary (int const*,char const*,size_t*) ;

__attribute__((used)) static int
pci_iov_schema_validate_unicast_mac(
   const struct config_type_validator * validator,
   const nvlist_t *config, const char *name)
{
 const uint8_t *mac;
 size_t size;

 if (!nvlist_exists_binary(config, name))
  return (EINVAL);

 mac = nvlist_get_binary(config, name, &size);

 if (size != ETHER_ADDR_LEN)
  return (EINVAL);

 if (ETHER_IS_MULTICAST(mac))
  return (EINVAL);

 return (0);
}
