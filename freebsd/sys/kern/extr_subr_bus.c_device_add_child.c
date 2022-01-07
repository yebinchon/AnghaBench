
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_add_child_ordered (int ,int ,char const*,int) ;

device_t
device_add_child(device_t dev, const char *name, int unit)
{
 return (device_add_child_ordered(dev, 0, name, unit));
}
