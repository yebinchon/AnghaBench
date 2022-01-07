
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int reg ;
typedef int phandle_t ;


 int ENOENT ;
 int OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ bootverbose ;
 int nvmem_get_cell_node (int ,int,int *) ;
 int ofw_bus_find_string_index (int ,char*,char const*,int*) ;
 int printf (char*,char const*) ;

int
nvmem_get_cell_len(phandle_t node, const char *name)
{
 phandle_t cell_node;
 uint32_t reg[2];
 int rv, idx;

 rv = ofw_bus_find_string_index(node, "nvmem-cell-names", name, &idx);
 if (rv != 0)
  return (rv);

 rv = nvmem_get_cell_node(node, idx, &cell_node);
 if (rv != 0)
  return (rv);

 if (OF_getencprop(cell_node, "reg", reg, sizeof(reg)) != sizeof(reg)) {
  if (bootverbose)
   printf("nvmem_get_cell_len: Cannot parse reg property of cell %s\n",
       name);
  return (ENOENT);
 }

 return (reg[1]);
}
