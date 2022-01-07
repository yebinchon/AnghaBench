
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;


 int* Crc16Table ;

__attribute__((used)) static uint16_t
Crc16(uint16_t crc, u_char *cp, int len)
{
 while (len--)
  crc = (crc >> 8) ^ Crc16Table[(crc ^ *cp++) & 0xff];
 return (crc);
}
