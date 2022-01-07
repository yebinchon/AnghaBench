
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int nvlist_t ;


 int ENOMEM ;
 int ETHER_ADDR_LEN ;
 int IOV_SCHEMA_HASDEFAULT ;
 int NV_FLAG_IGNORE_CASE ;
 int nvlist_add_binary (int *,char*,int const*,int ) ;
 int * nvlist_create (int ) ;
 int nvlist_move_nvlist (int *,char const*,int *) ;
 int nvlist_set_error (int *,int ) ;
 int pci_iov_schema_add_required (int *,int) ;
 int pci_iov_schema_add_type (int *,char*) ;

void
pci_iov_schema_add_unicast_mac(nvlist_t *schema, const char *name,
    uint32_t flags, const uint8_t * defaultVal)
{
 nvlist_t *entry;

 entry = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (entry == ((void*)0)) {
  nvlist_set_error(schema, ENOMEM);
  return;
 }

 pci_iov_schema_add_type(entry, "unicast-mac");
 if (flags & IOV_SCHEMA_HASDEFAULT)
  nvlist_add_binary(entry, "default", defaultVal, ETHER_ADDR_LEN);
 pci_iov_schema_add_required(entry, flags);

 nvlist_move_nvlist(schema, name, entry);
}
