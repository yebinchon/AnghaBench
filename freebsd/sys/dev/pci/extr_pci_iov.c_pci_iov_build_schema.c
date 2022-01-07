
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_error (int *) ;
 int pci_iov_build_pf_schema (int *,int **) ;
 int pci_iov_build_vf_schema (int *,int **) ;
 int * pci_iov_schema_alloc_node () ;

__attribute__((used)) static nvlist_t *
pci_iov_build_schema(nvlist_t **pf, nvlist_t **vf)
{
 nvlist_t *schema, *pf_driver, *vf_driver;


 pf_driver = *pf;
 *pf = ((void*)0);
 vf_driver = *vf;
 *vf = ((void*)0);

 schema = pci_iov_schema_alloc_node();
 if (schema == ((void*)0))
  goto cleanup;

 pci_iov_build_pf_schema(schema, &pf_driver);
 pci_iov_build_vf_schema(schema, &vf_driver);

 if (nvlist_error(schema) != 0)
  goto cleanup;

 return (schema);

cleanup:
 nvlist_destroy(schema);
 nvlist_destroy(pf_driver);
 nvlist_destroy(vf_driver);
 return (((void*)0));
}
