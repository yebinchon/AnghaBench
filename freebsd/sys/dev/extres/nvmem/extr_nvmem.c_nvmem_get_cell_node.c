
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 int ENOENT ;
 int OF_getencprop_alloc_multi (scalar_t__,char*,int,void**) ;
 int OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_node_from_xref (scalar_t__) ;
 int OF_prop_free (scalar_t__*) ;
 scalar_t__ bootverbose ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static int
nvmem_get_cell_node(phandle_t node, int idx, phandle_t *cell)
{
 phandle_t *p_cell;
 phandle_t cell_node;
 int ncell;

 if (!OF_hasprop(node, "nvmem-cells") ||
     !OF_hasprop(node, "nvmem-cell-names"))
  return (ENOENT);

 ncell = OF_getencprop_alloc_multi(node, "nvmem-cells", sizeof(*p_cell), (void **)&p_cell);
 if (ncell <= 0)
  return (ENOENT);

 cell_node = OF_node_from_xref(p_cell[idx]);
 if (cell_node == p_cell[idx]) {
  if (bootverbose)
   printf("nvmem_get_node: Cannot resolve phandle %x\n",
       p_cell[idx]);
  OF_prop_free(p_cell);
  return (ENOENT);
 }

 OF_prop_free(p_cell);
 *cell = cell_node;

 return (0);
}
