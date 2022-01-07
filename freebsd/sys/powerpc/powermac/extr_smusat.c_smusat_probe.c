
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
smusat_probe(device_t dev)
{
 const char *compat = ofw_bus_get_compat(dev);

 if (compat == ((void*)0) || strcmp(compat, "smu-sat") != 0)
  return (ENXIO);

 device_set_desc(dev, "SMU Satellite Sensors");
 return (0);
}
