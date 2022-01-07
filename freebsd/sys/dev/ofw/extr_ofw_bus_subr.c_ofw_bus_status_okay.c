
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 char* ofw_bus_get_status (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

int
ofw_bus_status_okay(device_t dev)
{
 const char *status;

 status = ofw_bus_get_status(dev);
 if (status == ((void*)0) || strcmp(status, "okay") == 0 ||
     strcmp(status, "ok") == 0)
  return (1);

 return (0);
}
