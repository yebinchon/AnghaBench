
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subchildname ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
i2s_probe(device_t self)
{
 const char *name;
 phandle_t subchild;
 char subchildname[255];

 name = ofw_bus_get_name(self);
 if (!name)
  return (ENXIO);

 if (strcmp(name, "i2s") != 0)
  return (ENXIO);






 subchild = OF_child(OF_child(ofw_bus_get_node(self)));
 if (subchild != 0 && OF_getprop(subchild, "name", subchildname,
     sizeof(subchildname)) > 0 && strcmp(subchildname, "lightshow") == 0)
  return (ENXIO);

 device_set_desc(self, "Apple I2S Audio Controller");

 return (0);
}
