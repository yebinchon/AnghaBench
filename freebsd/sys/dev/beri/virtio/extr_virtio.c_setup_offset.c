
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xref ;
typedef int uint32_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_getencprop (int,char*,int *,int) ;
 int OF_getproplen (int,char*) ;
 int OF_node_from_xref (int) ;
 int OF_searchencprop (int,char*,int*,int) ;
 int ofw_bus_get_node (int ) ;

int
setup_offset(device_t dev, uint32_t *offset)
{
 pcell_t dts_value[2];
 phandle_t mem_node;
 phandle_t xref;
 phandle_t node;
 int len;

 if ((node = ofw_bus_get_node(dev)) == -1)
  return (ENXIO);

 if (OF_searchencprop(node, "beri-mem", &xref,
  sizeof(xref)) == -1) {
  return (ENXIO);
 }

 mem_node = OF_node_from_xref(xref);
 if ((len = OF_getproplen(mem_node, "reg")) <= 0)
  return (ENXIO);
 OF_getencprop(mem_node, "reg", dts_value, len);
 *offset = dts_value[0];

 return (0);
}
