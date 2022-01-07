
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NV_FLAG_IGNORE_CASE ;
 int * nvlist_create (int ) ;

nvlist_t *
pci_iov_schema_alloc_node(void)
{

 return (nvlist_create(NV_FLAG_IGNORE_CASE));
}
