
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int IOV_SCHEMA_HASDEFAULT ;
 int IOV_SCHEMA_REQUIRED ;
 int nvlist_add_bool (int *,char*,int) ;
 int nvlist_set_error (int *,int ) ;

__attribute__((used)) static void
pci_iov_schema_add_required(nvlist_t *entry, uint32_t flags)
{

 if (flags & IOV_SCHEMA_REQUIRED) {
  if (flags & IOV_SCHEMA_HASDEFAULT) {
   nvlist_set_error(entry, EINVAL);
   return;
  }

  nvlist_add_bool(entry, "required", 1);
 }
}
