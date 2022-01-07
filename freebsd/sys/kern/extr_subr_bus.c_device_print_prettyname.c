
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int printf (char*,...) ;

int
device_print_prettyname(device_t dev)
{
 const char *name = device_get_name(dev);

 if (name == ((void*)0))
  return (printf("unknown: "));
 return (printf("%s%d: ", name, device_get_unit(dev)));
}
