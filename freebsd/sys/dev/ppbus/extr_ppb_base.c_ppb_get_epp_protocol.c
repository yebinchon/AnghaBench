
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int PPC_IVAR_EPP_PROTO ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;

int
ppb_get_epp_protocol(device_t bus)
{
 uintptr_t protocol;

 ppb_assert_locked(bus);
 BUS_READ_IVAR(device_get_parent(bus), bus, PPC_IVAR_EPP_PROTO, &protocol);

 return (protocol);
}
