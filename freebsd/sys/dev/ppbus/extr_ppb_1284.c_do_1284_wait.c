
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int PPB_NOINTR ;
 int PPB_POLL ;
 int ppb_poll_bus (int ,int,int ,int ,int) ;

__attribute__((used)) static int
do_1284_wait(device_t bus, uint8_t mask, uint8_t status)
{
 return (ppb_poll_bus(bus, 4, mask, status, PPB_NOINTR | PPB_POLL));
}
