
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 char* device_get_nameunit (int ) ;
 int printf (char*,char*) ;

int
bus_print_child_footer(device_t dev, device_t child)
{
 return (printf(" on %s\n", device_get_nameunit(dev)));
}
