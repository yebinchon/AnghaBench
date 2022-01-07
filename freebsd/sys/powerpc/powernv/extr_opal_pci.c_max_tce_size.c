
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int sizes ;
typedef int phandle_t ;
typedef int device_t ;
typedef unsigned long long cell_t ;


 int OF_getencprop (int ,char*,unsigned long long*,int) ;
 unsigned long long OPAL_PCI_TCE_DEFAULT_SEG_SIZE ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static uint64_t
max_tce_size(device_t dev)
{
 phandle_t node;
 cell_t sizes[64];
 int count;

 node = ofw_bus_get_node(dev);

 count = OF_getencprop(node, "ibm,supported-tce-sizes",
     sizes, sizeof(sizes));
 if (count < (int) sizeof(cell_t))
  return OPAL_PCI_TCE_DEFAULT_SEG_SIZE;

 count /= sizeof(cell_t);

 return (1ULL << sizes[count - 1]);
}
