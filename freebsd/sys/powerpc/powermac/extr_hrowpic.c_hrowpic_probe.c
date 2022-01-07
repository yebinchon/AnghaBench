
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
hrowpic_probe(device_t dev)
{
 const char *type = ofw_bus_get_type(dev);





 if (strcmp(type, "interrupt-controller") != 0)
  return (ENXIO);





 device_set_desc(dev, "Heathrow MacIO interrupt controller");
 return (0);
}
