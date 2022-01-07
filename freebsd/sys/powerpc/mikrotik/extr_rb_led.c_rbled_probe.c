
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int model ;
typedef int gp ;
typedef int device_t ;
typedef char cell_t ;


 int ENXIO ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 int OF_peer (int ) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
rbled_probe(device_t dev)
{
 phandle_t node;
 const char *name;
 cell_t gp[2];
 char model[6];

 node = ofw_bus_get_node(dev);

 name = ofw_bus_get_name(dev);
 if (name == ((void*)0))
  return (ENXIO);
 if (strcmp(name, "led") != 0)
  return (ENXIO);

 if (OF_getprop(node, "user_led", gp, sizeof(gp)) <= 0)
  return (ENXIO);


 node = OF_peer(0);
 if (OF_getprop(node, "model", model, sizeof(model)) <= 0)
  return (ENXIO);
 if (strcmp(model, "RB800") != 0)
  return (ENXIO);

 device_set_desc(dev, "RouterBoard LED");
 return (0);
}
