
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DEBUGFUNC (char*) ;

__attribute__((used)) static u32 e1000_calc_rx_da_crc(u8 mac[])
{
 u32 poly = 0xEDB88320;
 u32 i, j, mask, crc;

 DEBUGFUNC("e1000_calc_rx_da_crc");

 crc = 0xffffffff;
 for (i = 0; i < 6; i++) {
  crc = crc ^ mac[i];
  for (j = 8; j > 0; j--) {
   mask = (crc & 1) * (-1);
   crc = (crc >> 1) ^ (poly & mask);
  }
 }
 return ~crc;
}
