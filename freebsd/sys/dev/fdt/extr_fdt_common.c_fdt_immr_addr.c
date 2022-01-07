
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef void* u_long ;
typedef int phandle_t ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 int fdt_find_compatible (int,char*,int ) ;
 int fdt_get_range (int,int ,void**,void**) ;
 void* fdt_immr_pa ;
 void* fdt_immr_size ;
 int fdt_immr_va ;
 scalar_t__ ofw_bus_node_is_compatible (int,char*) ;

int
fdt_immr_addr(vm_offset_t immr_va)
{
 phandle_t node;
 u_long base, size;
 int r;




 if ((node = OF_finddevice("soc")) != -1)
  if (ofw_bus_node_is_compatible(node, "simple-bus"))
   goto moveon;



 if ((node = OF_finddevice("/")) == -1)
  return (ENXIO);

 if ((node = fdt_find_compatible(node, "simple-bus", 0)) == 0)
  return (ENXIO);

moveon:
 if ((r = fdt_get_range(node, 0, &base, &size)) == 0) {
  fdt_immr_pa = base;
  fdt_immr_va = immr_va;
  fdt_immr_size = size;
 }

 return (r);
}
