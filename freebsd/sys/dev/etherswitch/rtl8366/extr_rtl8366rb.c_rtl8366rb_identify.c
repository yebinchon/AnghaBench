
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_ivar {int addr; } ;
typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 struct iicbus_ivar* IICBUS_IVAR (int ) ;
 int RTL8366_IIC_ADDR ;
 int * device_find_child (int ,char*,int) ;

__attribute__((used)) static void
rtl8366rb_identify(driver_t *driver, device_t parent)
{
 device_t child;
 struct iicbus_ivar *devi;

 if (device_find_child(parent, "rtl8366rb", -1) == ((void*)0)) {
  child = BUS_ADD_CHILD(parent, 0, "rtl8366rb", -1);
  devi = IICBUS_IVAR(child);
  devi->addr = RTL8366_IIC_ADDR;
 }
}
