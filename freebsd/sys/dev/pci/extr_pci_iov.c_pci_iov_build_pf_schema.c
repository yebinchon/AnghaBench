
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int ENOMEM ;
 int IOV_CONFIG_NAME ;
 int PF_CONFIG_NAME ;
 int nvlist_move_nvlist (int *,int ,int *) ;
 int nvlist_set_error (int *,int ) ;
 int * pci_iov_get_pf_subsystem_schema () ;
 int * pci_iov_schema_alloc_node () ;

__attribute__((used)) static void
pci_iov_build_pf_schema(nvlist_t *schema, nvlist_t **driver_schema)
{
 nvlist_t *pf_schema, *iov_schema;

 pf_schema = pci_iov_schema_alloc_node();
 if (pf_schema == ((void*)0)) {
  nvlist_set_error(schema, ENOMEM);
  return;
 }

 iov_schema = pci_iov_get_pf_subsystem_schema();







 nvlist_move_nvlist(pf_schema, DRIVER_CONFIG_NAME, *driver_schema);
 nvlist_move_nvlist(pf_schema, IOV_CONFIG_NAME, iov_schema);
 nvlist_move_nvlist(schema, PF_CONFIG_NAME, pf_schema);
 *driver_schema = ((void*)0);
}
