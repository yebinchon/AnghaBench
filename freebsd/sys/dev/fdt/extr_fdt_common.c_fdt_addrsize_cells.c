
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;
typedef int cell ;


 int ERANGE ;
 int OF_getencprop (int ,char*,int*,int) ;

int
fdt_addrsize_cells(phandle_t node, int *addr_cells, int *size_cells)
{
 pcell_t cell;
 int cell_size;




 cell_size = sizeof(cell);
 if (OF_getencprop(node, "#address-cells", &cell, cell_size) < cell_size)
  cell = 2;
 *addr_cells = (int)cell;

 if (OF_getencprop(node, "#size-cells", &cell, cell_size) < cell_size)
  cell = 1;
 *size_cells = (int)cell;

 if (*addr_cells > 3 || *size_cells > 2)
  return (ERANGE);
 return (0);
}
