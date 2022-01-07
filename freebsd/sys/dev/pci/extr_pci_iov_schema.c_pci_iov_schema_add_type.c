
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int nvlist_add_string (int *,char*,char const*) ;
 int nvlist_set_error (int *,int ) ;
 int * pci_iov_schema_find_validator (char const*) ;

__attribute__((used)) static void
pci_iov_schema_add_type(nvlist_t *entry, const char *type)
{

 if (pci_iov_schema_find_validator(type) == ((void*)0)) {
  nvlist_set_error(entry, EINVAL);
  return;
 }
 nvlist_add_string(entry, "type", type);
}
