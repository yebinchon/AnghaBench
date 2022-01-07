
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int mode; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int ppb_assert_locked (int ) ;

int
ppb_get_mode(device_t bus)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);


 ppb_assert_locked(bus);
 return (ppb->mode);
}
