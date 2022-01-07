
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int buf ;


 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,size_t) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static phandle_t
uart_cpu_getdev_keyboard(char *dev, size_t devsz)
{
 char buf[sizeof("serial")];
 phandle_t input;

 if ((input = OF_finddevice("keyboard")) == -1)
  return (-1);
 if (OF_getprop(input, "device_type", buf, sizeof(buf)) == -1)
  return (-1);
 if (strcmp(buf, "serial") != 0)
  return (-1);
 if (OF_getprop(input, "name", dev, devsz) == -1)
  return (-1);




 if (strcmp(dev, "su") && strcmp(dev, "su_pnp") && strcmp(dev, "zs"))
  return (-1);
 return (input);
}
