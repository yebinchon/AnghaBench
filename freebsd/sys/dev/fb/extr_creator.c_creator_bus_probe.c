
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OF_getprop (int ,char*,int*,int) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
creator_bus_probe(device_t dev)
{
 const char *name;
 phandle_t node;
 int type;

 name = ofw_bus_get_name(dev);
 node = ofw_bus_get_node(dev);
 if (strcmp(name, "SUNW,ffb") == 0) {
  if (OF_getprop(node, "board_type", &type, sizeof(type)) == -1)
   return (ENXIO);
  switch (type & 7) {
  case 0x0:
   device_set_desc(dev, "Creator");
   break;
  case 0x3:
   device_set_desc(dev, "Creator3D");
   break;
  default:
   return (ENXIO);
  }
 } else if (strcmp(name, "SUNW,afb") == 0)
  device_set_desc(dev, "Elite3D");
 else
  return (ENXIO);
 return (BUS_PROBE_DEFAULT);
}
