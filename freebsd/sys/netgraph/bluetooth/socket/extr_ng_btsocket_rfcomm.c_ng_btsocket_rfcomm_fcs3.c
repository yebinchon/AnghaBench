
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;


 scalar_t__ ng_btsocket_rfcomm_crc (scalar_t__*,int) ;

__attribute__((used)) static u_int8_t
ng_btsocket_rfcomm_fcs3(u_int8_t *data)
{
 return (0xff - ng_btsocket_rfcomm_crc(data, 3));
}
