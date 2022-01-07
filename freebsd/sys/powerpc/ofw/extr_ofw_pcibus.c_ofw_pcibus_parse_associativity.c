
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;
typedef int cell_t ;


 int ENXIO ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_getproplen (int,char*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
ofw_pcibus_parse_associativity(device_t dev, int *domain)
{
 phandle_t node;
 cell_t associativity[5];
 int res;

 if ((node = ofw_bus_get_node(dev)) == -1) {
  if (bootverbose)
   device_printf(dev, "no ofw node found\n");
  return (ENXIO);
 }
 res = OF_getproplen(node, "ibm,associativity");
 if (res <= 0)
  return (ENXIO);
 OF_getencprop(node, "ibm,associativity",
  associativity, res);

 *domain = associativity[3];
 if (bootverbose)
  device_printf(dev, "domain(%d)\n", *domain);
 return (0);
}
