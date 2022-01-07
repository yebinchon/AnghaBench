
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ALIM ;
 int I2CKEY ;
 int PPB_DONTWAIT ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int lpbb_reset_bus (int ) ;
 int ppb_lock (int ) ;
 int ppb_release_bus (int ,int ) ;
 scalar_t__ ppb_request_bus (int ,int ,int ) ;
 int ppb_rstr (int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lpbb_detect(device_t dev)
{
 device_t ppbus = device_get_parent(dev);

 ppb_lock(ppbus);
 if (ppb_request_bus(ppbus, dev, PPB_DONTWAIT)) {
  ppb_unlock(ppbus);
  device_printf(dev, "can't allocate ppbus\n");
  return (0);
 }

 lpbb_reset_bus(dev);

 if ((ppb_rstr(ppbus) & I2CKEY) ||
  ((ppb_rstr(ppbus) & ALIM) != ALIM)) {
  ppb_release_bus(ppbus, dev);
  ppb_unlock(ppbus);
  return (0);
 }

 ppb_release_bus(ppbus, dev);
 ppb_unlock(ppbus);

 return (1);
}
