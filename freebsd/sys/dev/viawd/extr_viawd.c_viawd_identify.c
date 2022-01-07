
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,int ,int ) ;
 int * device_find_child (int ,int ,int) ;
 int * viawd_find (int ) ;

__attribute__((used)) static void
viawd_identify(driver_t *driver, device_t parent)
{

 if (viawd_find(parent) == ((void*)0))
  return;

 if (device_find_child(parent, driver->name, -1) == ((void*)0))
  BUS_ADD_CHILD(parent, 0, driver->name, 0);
}
