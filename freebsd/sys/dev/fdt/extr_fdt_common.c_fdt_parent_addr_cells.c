
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;
typedef int addr_cells ;


 int OF_parent (int ) ;
 scalar_t__ OF_searchprop (int ,char*,int *,int) ;
 scalar_t__ fdt32_to_cpu (int ) ;

int
fdt_parent_addr_cells(phandle_t node)
{
 pcell_t addr_cells;


 if (OF_searchprop(OF_parent(node), "#address-cells", &addr_cells,
     sizeof(addr_cells)) <= 0)
  return (2);

 return ((int)fdt32_to_cpu(addr_cells));
}
