
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int driver_t ;
typedef int device_t ;
struct TYPE_2__ {int * ops; } ;


 int BUS_ADD_CHILD (int ,int ,int ,int ) ;
 int driver_name ;
 TYPE_1__ main_cons ;

__attribute__((used)) static void
xencons_identify(driver_t *driver, device_t parent)
{
 device_t child;

 if (main_cons.ops == ((void*)0))
  return;

 child = BUS_ADD_CHILD(parent, 0, driver_name, 0);
}
