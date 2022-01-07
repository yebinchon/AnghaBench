
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOV_SCHEMA_HASDEFAULT ;
 int pci_iov_schema_add_bool (int *,char*,int ,int ) ;
 int * pci_iov_schema_alloc_node () ;

__attribute__((used)) static nvlist_t *
pci_iov_get_vf_subsystem_schema(void)
{
 nvlist_t *vf;

 vf = pci_iov_schema_alloc_node();
 if (vf == ((void*)0))
  return (((void*)0));

 pci_iov_schema_add_bool(vf, "passthrough", IOV_SCHEMA_HASDEFAULT, 0);

 return (vf);
}
