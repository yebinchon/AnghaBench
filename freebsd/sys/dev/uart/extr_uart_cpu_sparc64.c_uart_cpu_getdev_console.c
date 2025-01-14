
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int inst ;
typedef int input ;
typedef int ihandle_t ;
typedef int buf ;


 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,...) ;
 scalar_t__ OF_getproplen (int,char*) ;
 int OF_instance_to_package (int) ;
 int snprintf (char*,size_t,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static phandle_t
uart_cpu_getdev_console(phandle_t options, char *dev, size_t devsz)
{
 char buf[sizeof("serial")];
 ihandle_t inst;
 phandle_t chosen, input, output;

 if (OF_getprop(options, "input-device", dev, devsz) == -1)
  return (-1);
 input = OF_finddevice(dev);
 if (OF_getprop(options, "output-device", dev, devsz) == -1)
  return (-1);
 output = OF_finddevice(dev);
 if (input == -1 || output == -1 ||
     OF_getproplen(input, "keyboard") >= 0) {
  if ((chosen = OF_finddevice("/chosen")) == -1)
   return (-1);
  if (OF_getprop(chosen, "stdin", &inst, sizeof(inst)) == -1)
   return (-1);
  if ((input = OF_instance_to_package(inst)) == -1)
   return (-1);
  if (OF_getprop(chosen, "stdout", &inst, sizeof(inst)) == -1)
   return (-1);
  if ((output = OF_instance_to_package(inst)) == -1)
   return (-1);
  snprintf(dev, devsz, "ttya");
 }
 if (input != output)
  return (-1);
 if (OF_getprop(input, "device_type", buf, sizeof(buf)) == -1)
  return (-1);
 if (strcmp(buf, "serial") != 0)
  return (-1);

 if (OF_getprop(input, "name", buf, sizeof(buf)) > 0 &&
     !strcmp(buf, "sgcn")) {
  if ((chosen = OF_finddevice("/chosen")) == -1)
   return (-1);
  if (OF_getprop(chosen, "iosram", &input, sizeof(input)) == -1)
   return (-1);
 }
 return (input);
}
