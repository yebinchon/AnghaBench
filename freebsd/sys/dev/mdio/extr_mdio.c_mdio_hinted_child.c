
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_add_child (int ,char const*,int) ;

__attribute__((used)) static void
mdio_hinted_child(device_t dev, const char *name, int unit)
{

 device_add_child(dev, name, unit);
}
