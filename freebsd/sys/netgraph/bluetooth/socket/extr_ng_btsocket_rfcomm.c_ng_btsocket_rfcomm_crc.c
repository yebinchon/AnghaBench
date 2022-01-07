
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;


 size_t* ng_btsocket_rfcomm_crc_table ;

__attribute__((used)) static u_int8_t
ng_btsocket_rfcomm_crc(u_int8_t *data, int length)
{
 u_int8_t crc = 0xff;

 while (length --)
  crc = ng_btsocket_rfcomm_crc_table[crc ^ *data++];

 return (crc);
}
