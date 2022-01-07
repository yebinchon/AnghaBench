
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 int device_find_child (int ,char*,int) ;

__attribute__((used)) static void
lp_identify(driver_t *driver, device_t parent)
{
 device_t dev;

 dev = device_find_child(parent, "plip", -1);
 if (!dev)
  BUS_ADD_CHILD(parent, 0, "plip", -1);
}
