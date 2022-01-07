
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int reg ;
typedef int phandle_t ;
typedef int pcell_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int OF_getprop (int ,char*,int **,int) ;
 int OF_parent (int ) ;
 scalar_t__ fdt_addrsize_cells (int ,int*,int*) ;
 int fdt_data_get (int *,int) ;

int
fdt_regsize(phandle_t node, u_long *base, u_long *size)
{
 pcell_t reg[4];
 int addr_cells, len, size_cells;

 if (fdt_addrsize_cells(OF_parent(node), &addr_cells, &size_cells))
  return (ENXIO);

 if ((sizeof(pcell_t) * (addr_cells + size_cells)) > sizeof(reg))
  return (ENOMEM);

 len = OF_getprop(node, "reg", &reg, sizeof(reg));
 if (len <= 0)
  return (EINVAL);

 *base = fdt_data_get(&reg[0], addr_cells);
 *size = fdt_data_get(&reg[addr_cells], size_cells);
 return (0);
}
