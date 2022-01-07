
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int mode; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 scalar_t__ PPBUS_SETMODE (int ,int) ;
 int PPB_MASK ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;
 int ppb_get_mode (int ) ;

int
ppb_set_mode(device_t bus, int mode)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);
 int old_mode = ppb_get_mode(bus);

 ppb_assert_locked(bus);
 if (PPBUS_SETMODE(device_get_parent(bus), mode))
  return (-1);


 ppb->mode = (mode & PPB_MASK);

 return (old_mode);
}
