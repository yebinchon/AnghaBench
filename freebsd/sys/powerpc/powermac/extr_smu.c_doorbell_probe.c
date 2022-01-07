
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
doorbell_probe(device_t dev)
{
 const char *name = ofw_bus_get_name(dev);

 if (strcmp(name, "smu-doorbell") != 0)
  return (ENXIO);

 device_set_desc(dev, "SMU Doorbell GPIO");
 device_quiet(dev);
 return (0);
}
