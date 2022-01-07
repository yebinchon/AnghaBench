
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_range {void* len; void* base; } ;
typedef int ranges ;
typedef int phandle_t ;
typedef int pcell_t ;


 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 int FDT_RANGES_CELLS ;
 scalar_t__ OF_getprop (int ,char*,int*,int) ;
 int OF_getproplen (int ,char*) ;
 int bzero (struct mtk_pci_range*,int) ;
 scalar_t__ fdt_addrsize_cells (int ,int*,int*) ;
 void* fdt_data_get (void*,int) ;
 int fdt_parent_addr_cells (int ) ;

__attribute__((used)) static int
mtk_pci_ranges_decode(phandle_t node, struct mtk_pci_range *io_space,
    struct mtk_pci_range *mem_space)
{
 struct mtk_pci_range *pci_space;
 pcell_t ranges[FDT_RANGES_CELLS];
 pcell_t addr_cells, size_cells, par_addr_cells;
 pcell_t *rangesptr;
 pcell_t cell0, cell1, cell2;
 int tuple_size, tuples, i, rv, len;




 if ((fdt_addrsize_cells(node, &addr_cells, &size_cells)) != 0)
  return (EINVAL);
 if (addr_cells != 3 || size_cells != 2)
  return (ERANGE);

 par_addr_cells = fdt_parent_addr_cells(node);
 if (par_addr_cells != 1)
  return (ERANGE);

 len = OF_getproplen(node, "ranges");
 if (len > sizeof(ranges))
  return (ENOMEM);

 if (OF_getprop(node, "ranges", ranges, sizeof(ranges)) <= 0)
  return (EINVAL);

 tuple_size = sizeof(pcell_t) * (addr_cells + par_addr_cells +
     size_cells);
 tuples = len / tuple_size;






 bzero(io_space, sizeof(*io_space));
 bzero(mem_space, sizeof(*mem_space));

 rangesptr = &ranges[0];
 for (i = 0; i < tuples; i++) {
  cell0 = fdt_data_get((void *)rangesptr, 1);
  rangesptr++;
  cell1 = fdt_data_get((void *)rangesptr, 1);
  rangesptr++;
  cell2 = fdt_data_get((void *)rangesptr, 1);
  rangesptr++;

  if (cell0 & 0x02000000) {
   pci_space = mem_space;
  } else if (cell0 & 0x01000000) {
   pci_space = io_space;
  } else {
   rv = ERANGE;
   goto out;
  }

  pci_space->base = fdt_data_get((void *)rangesptr,
      par_addr_cells);
  rangesptr += par_addr_cells;

  pci_space->len = fdt_data_get((void *)rangesptr, size_cells);
  rangesptr += size_cells;
 }

 rv = 0;
out:
 return (rv);
}
