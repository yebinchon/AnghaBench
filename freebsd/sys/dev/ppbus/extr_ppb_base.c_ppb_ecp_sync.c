
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PPBUS_ECP_SYNC (int ) ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;

int
ppb_ecp_sync(device_t bus)
{

 ppb_assert_locked(bus);
 return (PPBUS_ECP_SYNC(device_get_parent(bus)));
}
