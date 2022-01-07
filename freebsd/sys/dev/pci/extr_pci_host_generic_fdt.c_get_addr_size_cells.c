
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;


 int OF_getencprop (int ,char*,int*,int) ;

__attribute__((used)) static __inline void
get_addr_size_cells(phandle_t node, pcell_t *addr_cells, pcell_t *size_cells)
{

 *addr_cells = 2;

 OF_getencprop(node, "#address-cells", addr_cells, sizeof(*addr_cells));

 *size_cells = 2;

 OF_getencprop(node, "#size-cells", size_cells, sizeof(*size_cells));
}
