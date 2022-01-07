
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 int rtas_exists () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
rtasdev_probe(device_t dev)
{
 const char *name = ofw_bus_get_name(dev);

 if (strcmp(name, "rtas") != 0)
  return (ENXIO);
 if (!rtas_exists())
  return (ENXIO);

 device_set_desc(dev, "Run-Time Abstraction Services");
 return (0);
}
