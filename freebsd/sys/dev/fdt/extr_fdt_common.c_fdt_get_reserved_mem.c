
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mem_region {int mr_size; int mr_start; } ;
typedef int reg ;
typedef int phandle_t ;
typedef int pcell_t ;


 int ENXIO ;
 int FDT_REG_CELLS ;
 int OF_child (int) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,int *,int) ;
 int OF_hasprop (int,char*) ;
 int OF_peer (int) ;
 int fdt_addrsize_cells (int,int*,int*) ;
 int fdt_data_to_res (int *,int,int,int *,int *) ;
 int panic (char*,int,int) ;

int
fdt_get_reserved_mem(struct mem_region *reserved, int *mreserved)
{
 pcell_t reg[FDT_REG_CELLS];
 phandle_t child, root;
 int addr_cells, size_cells;
 int i, rv;

 root = OF_finddevice("/reserved-memory");
 if (root == -1) {
  return (ENXIO);
 }

 if ((rv = fdt_addrsize_cells(root, &addr_cells, &size_cells)) != 0)
  return (rv);

 if (addr_cells + size_cells > FDT_REG_CELLS)
  panic("Too many address and size cells %d %d", addr_cells,
      size_cells);

 i = 0;
 for (child = OF_child(root); child != 0; child = OF_peer(child)) {
  if (!OF_hasprop(child, "no-map"))
   continue;

  rv = OF_getprop(child, "reg", reg, sizeof(reg));
  if (rv <= 0)

   continue;

  fdt_data_to_res(reg, addr_cells, size_cells,
      (u_long *)&reserved[i].mr_start,
      (u_long *)&reserved[i].mr_size);
  i++;
 }

 *mreserved = i;

 return (0);
}
