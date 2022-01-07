
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct config_type_validator {int dummy; } ;
typedef int nvlist_t ;


 int DEFAULT_SCHEMA_NAME ;
 int EINVAL ;
 size_t ETHER_ADDR_LEN ;
 scalar_t__ ETHER_IS_MULTICAST (int const*) ;
 int nvlist_exists_binary (int const*,int ) ;
 int * nvlist_get_binary (int const*,int ,size_t*) ;

__attribute__((used)) static int
pci_iov_validate_unicast_mac_default(
   const struct config_type_validator * validator, const nvlist_t *param)
{
 const uint8_t *mac;
 size_t size;

 if (!nvlist_exists_binary(param, DEFAULT_SCHEMA_NAME))
  return (EINVAL);

 mac = nvlist_get_binary(param, DEFAULT_SCHEMA_NAME, &size);
 if (size != ETHER_ADDR_LEN)
  return (EINVAL);

 if (ETHER_IS_MULTICAST(mac))
  return (EINVAL);
 return (0);
}
