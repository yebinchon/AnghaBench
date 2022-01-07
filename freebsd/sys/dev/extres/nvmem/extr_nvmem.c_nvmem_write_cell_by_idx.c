
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int reg ;
typedef int phandle_t ;
typedef int * device_t ;


 int EINVAL ;
 int ENXIO ;
 int NVMEM_WRITE (int *,size_t,size_t,void*) ;
 int * OF_device_from_xref (int ) ;
 int OF_getencprop (int ,char*,size_t*,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_parent (int ) ;
 int OF_xref_from_node (int ) ;
 scalar_t__ bootverbose ;
 int nvmem_get_cell_node (int ,int,int *) ;
 int printf (char*,...) ;

int
nvmem_write_cell_by_idx(phandle_t node, int idx, void *cell, size_t buflen)
{
 phandle_t cell_node, prov_node;
 device_t provider;
 uint32_t reg[2];
 int rv;

 rv = nvmem_get_cell_node(node, idx, &cell_node);
 if (rv != 0)
  return (rv);

 prov_node = OF_parent(cell_node);
 if (OF_hasprop(prov_node, "read-only"))
  return (ENXIO);


 if (OF_getencprop(cell_node, "reg", reg, sizeof(reg)) != sizeof(reg)) {
  if (bootverbose)
   printf("nvmem_get_cell_by_idx: Cannot parse reg property of cell %d\n",
       idx);
  return (ENXIO);
 }

 if (buflen != reg[1])
  return (EINVAL);

 provider = OF_device_from_xref(OF_xref_from_node(prov_node));
 if (provider == ((void*)0)) {
  if (bootverbose)
   printf("nvmem_get_cell_by_idx: Cannot find the nvmem device\n");
  return (ENXIO);
 }

 rv = NVMEM_WRITE(provider, reg[0], reg[1], cell);
 if (rv != 0) {
  return (rv);
 }

 return (0);
}
