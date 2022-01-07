
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_long ;
struct mem_region {scalar_t__ mr_size; int mr_start; } ;
typedef int reg ;
typedef int phandle_t ;
typedef int pcell_t ;


 int ENXIO ;
 int ERANGE ;
 int FDT_MEM_REGIONS ;
 int FDT_REG_CELLS ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int,char*,int *,int) ;
 int OF_getproplen (int,char*) ;
 int OF_parent (int) ;
 int fdt_addrsize_cells (int ,int*,int*) ;
 int fdt_data_to_res (int *,int,int,int *,int *) ;

int
fdt_get_mem_regions(struct mem_region *mr, int *mrcnt, uint64_t *memsize)
{
 pcell_t reg[FDT_REG_CELLS * FDT_MEM_REGIONS];
 pcell_t *regp;
 phandle_t memory;
 uint64_t memory_size;
 int addr_cells, size_cells;
 int i, reg_len, rv, tuple_size, tuples;

 memory = OF_finddevice("/memory");
 if (memory == -1) {
  rv = ENXIO;
  goto out;
 }

 if ((rv = fdt_addrsize_cells(OF_parent(memory), &addr_cells,
     &size_cells)) != 0)
  goto out;

 if (addr_cells > 2) {
  rv = ERANGE;
  goto out;
 }

 tuple_size = sizeof(pcell_t) * (addr_cells + size_cells);
 reg_len = OF_getproplen(memory, "reg");
 if (reg_len <= 0 || reg_len > sizeof(reg)) {
  rv = ERANGE;
  goto out;
 }

 if (OF_getprop(memory, "reg", reg, reg_len) <= 0) {
  rv = ENXIO;
  goto out;
 }

 memory_size = 0;
 tuples = reg_len / tuple_size;
 regp = (pcell_t *)&reg;
 for (i = 0; i < tuples; i++) {

  rv = fdt_data_to_res(regp, addr_cells, size_cells,
   (u_long *)&mr[i].mr_start, (u_long *)&mr[i].mr_size);

  if (rv != 0)
   goto out;

  regp += addr_cells + size_cells;
  memory_size += mr[i].mr_size;
 }

 if (memory_size == 0) {
  rv = ERANGE;
  goto out;
 }

 *mrcnt = i;
 if (memsize != ((void*)0))
  *memsize = memory_size;
 rv = 0;
out:
 return (rv);
}
