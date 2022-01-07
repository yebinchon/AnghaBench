
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int nvmem_write_cell_by_idx (int ,int,void*,size_t) ;
 int ofw_bus_find_string_index (int ,char*,char const*,int*) ;

int
nvmem_write_cell_by_name(phandle_t node, const char *name, void *cell, size_t buflen)
{
 int rv, idx;

 rv = ofw_bus_find_string_index(node, "nvmem-cell-names", name, &idx);
 if (rv != 0)
  return (rv);

 return (nvmem_write_cell_by_idx(node, idx, cell, buflen));
}
