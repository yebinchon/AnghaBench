
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int nvlist_t ;


 int ENOMEM ;
 int IOV_SCHEMA_HASDEFAULT ;
 int NV_FLAG_IGNORE_CASE ;
 int nvlist_add_number (int *,char*,int ) ;
 int * nvlist_create (int ) ;
 int nvlist_move_nvlist (int *,char const*,int *) ;
 int nvlist_set_error (int *,int ) ;
 int pci_iov_schema_add_required (int *,int) ;
 int pci_iov_schema_add_type (int *,char const*) ;

__attribute__((used)) static void
pci_iov_schema_int(nvlist_t *schema, const char *name, const char *type,
    uint32_t flags, uint64_t defaultVal)
{
 nvlist_t *entry;

 entry = nvlist_create(NV_FLAG_IGNORE_CASE);
 if (entry == ((void*)0)) {
  nvlist_set_error(schema, ENOMEM);
  return;
 }

 pci_iov_schema_add_type(entry, type);
 if (flags & IOV_SCHEMA_HASDEFAULT)
  nvlist_add_number(entry, "default", defaultVal);
 pci_iov_schema_add_required(entry, flags);

 nvlist_move_nvlist(schema, name, entry);
}
