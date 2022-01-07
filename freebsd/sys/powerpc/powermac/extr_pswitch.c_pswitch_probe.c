
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 char* macio_get_devtype (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
pswitch_probe(device_t dev)
{
 char *type = macio_get_devtype(dev);

 if (strcmp(type, "gpio") != 0)
  return (ENXIO);

 device_set_desc(dev, "GPIO Programmer's Switch");
 return (0);
}
