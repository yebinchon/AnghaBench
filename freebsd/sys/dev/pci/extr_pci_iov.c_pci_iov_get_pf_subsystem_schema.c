
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOV_SCHEMA_REQUIRED ;
 int pci_iov_schema_add_string (int *,char*,int ,int *) ;
 int pci_iov_schema_add_uint16 (int *,char*,int ,int) ;
 int * pci_iov_schema_alloc_node () ;

__attribute__((used)) static nvlist_t *
pci_iov_get_pf_subsystem_schema(void)
{
 nvlist_t *pf;

 pf = pci_iov_schema_alloc_node();
 if (pf == ((void*)0))
  return (((void*)0));

 pci_iov_schema_add_uint16(pf, "num_vfs", IOV_SCHEMA_REQUIRED, -1);
 pci_iov_schema_add_string(pf, "device", IOV_SCHEMA_REQUIRED, ((void*)0));

 return (pf);
}
