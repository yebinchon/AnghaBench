
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct numa_mem_region {int mr_start; int mr_size; } ;
typedef int ssize_t ;
typedef int size_cells ;
typedef int phandle_t ;
typedef int cell_t ;
typedef int address_cells ;
typedef int OFmem ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int,char const*,int*,int) ;
 int PHYS_AVAIL_SZ ;
 int panic (char*) ;

__attribute__((used)) static int
parse_numa_ofw_memory(phandle_t node, const char *prop,
    struct numa_mem_region *output)
{
 cell_t address_cells, size_cells;
 cell_t OFmem[4 * PHYS_AVAIL_SZ];
 int sz, i, j;
 phandle_t phandle;

 sz = 0;





 phandle = OF_finddevice("/");
 if (OF_getencprop(phandle, "#address-cells", &address_cells,
     sizeof(address_cells)) < (ssize_t)sizeof(address_cells))
  address_cells = 1;
 if (OF_getencprop(phandle, "#size-cells", &size_cells,
     sizeof(size_cells)) < (ssize_t)sizeof(size_cells))
  size_cells = 1;




 if (node == -1 || (sz = OF_getencprop(node, prop,
     OFmem, sizeof(OFmem))) <= 0)
  panic("Physical memory map not found");

 i = 0;
 j = 0;
 while (i < sz/sizeof(cell_t)) {
  output[j].mr_start = OFmem[i++];
  if (address_cells == 2) {
   output[j].mr_start <<= 32;
   output[j].mr_start += OFmem[i++];
  }
  output[j].mr_size = OFmem[i++];
  if (size_cells == 2) {
   output[j].mr_size <<= 32;
   output[j].mr_size += OFmem[i++];
  }
  j++;
 }

 return (j);
}
