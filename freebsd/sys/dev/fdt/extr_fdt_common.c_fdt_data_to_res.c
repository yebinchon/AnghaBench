
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int pcell_t ;


 int ERANGE ;
 int fdt_data_get (void*,int) ;

int
fdt_data_to_res(pcell_t *data, int addr_cells, int size_cells, u_long *start,
    u_long *count)
{


 if (addr_cells > 2)
  return (ERANGE);

 *start = fdt_data_get((void *)data, addr_cells);
 data += addr_cells;


 if (size_cells > 2)
  return (ERANGE);

 *count = fdt_data_get((void *)data, size_cells);
 return (0);
}
