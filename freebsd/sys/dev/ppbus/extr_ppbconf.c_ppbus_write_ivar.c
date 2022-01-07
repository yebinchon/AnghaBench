
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENOENT ;

 int ppb_set_mode (int ,uintptr_t) ;

__attribute__((used)) static int
ppbus_write_ivar(device_t bus, device_t dev, int index, uintptr_t val)
{

 switch (index) {
 case 128:

  ppb_set_mode(bus, val);
  break;
 default:
  return (ENOENT);
   }

 return (0);
}
