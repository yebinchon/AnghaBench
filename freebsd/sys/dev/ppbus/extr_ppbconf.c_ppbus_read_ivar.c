
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u_long ;
typedef int device_t ;


 int ENOENT ;

 int ppb_get_mode (int ) ;

__attribute__((used)) static int
ppbus_read_ivar(device_t bus, device_t dev, int index, uintptr_t* val)
{

 switch (index) {
 case 128:

  *val = (u_long)ppb_get_mode(bus);
  break;
 default:
  return (ENOENT);
 }

 return (0);
}
