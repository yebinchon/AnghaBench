
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int device_t ;
struct TYPE_5__ {int vga_enabled; } ;


 int * BUS_ADD_CHILD (int ,int ,int ,int ) ;
 int panic (char*) ;
 TYPE_3__ vga_conssoftc ;

__attribute__((used)) static void
vtvga_identify(driver_t *driver, device_t parent)
{

 if (!vga_conssoftc.vga_enabled)
  return;

 if (BUS_ADD_CHILD(parent, 0, driver->name, 0) == ((void*)0))
  panic("Unable to attach vt_vga console");
}
