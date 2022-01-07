
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,int ,int ) ;
 int KBDC_RID_KBD ;
 int device_get_unit (int ) ;

__attribute__((used)) static void
atkbdidentify(driver_t *driver, device_t parent)
{


 BUS_ADD_CHILD(parent, KBDC_RID_KBD, driver->name, device_get_unit(parent));
}
