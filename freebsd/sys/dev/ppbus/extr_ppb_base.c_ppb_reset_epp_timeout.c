
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PPBUS_RESET_EPP (int ) ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;

int
ppb_reset_epp_timeout(device_t bus)
{

 ppb_assert_locked(bus);
 return(PPBUS_RESET_EPP(device_get_parent(bus)));
}
