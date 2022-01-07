
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;


 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_request_bus (int ,int ,int) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lpbb_callback(device_t dev, int index, caddr_t data)
{
 device_t ppbus = device_get_parent(dev);
 int error = 0;
 int how;

 switch (index) {
 case 128:

  how = *(int *)data;
  ppb_lock(ppbus);
  error = ppb_request_bus(ppbus, dev, how);
  ppb_unlock(ppbus);
  break;

 case 129:

  ppb_lock(ppbus);
  error = ppb_release_bus(ppbus, dev);
  ppb_unlock(ppbus);
  break;

 default:
  error = EINVAL;
 }

 return (error);
}
