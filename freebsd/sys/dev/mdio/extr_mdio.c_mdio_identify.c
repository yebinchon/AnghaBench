
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int driver_t ;
typedef int device_t ;
struct TYPE_2__ {int name; } ;


 int BUS_ADD_CHILD (int ,int ,int ,int) ;
 int * device_find_child (int ,int ,int) ;
 TYPE_1__ mdio_driver ;

__attribute__((used)) static void
mdio_identify(driver_t *driver, device_t parent)
{

 if (device_find_child(parent, mdio_driver.name, -1) == ((void*)0))
  BUS_ADD_CHILD(parent, 0, mdio_driver.name, -1);
}
