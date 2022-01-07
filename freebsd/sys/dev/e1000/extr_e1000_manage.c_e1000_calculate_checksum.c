
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;


 int DEBUGFUNC (char*) ;

u8 e1000_calculate_checksum(u8 *buffer, u32 length)
{
 u32 i;
 u8 sum = 0;

 DEBUGFUNC("e1000_calculate_checksum");

 if (!buffer)
  return 0;

 for (i = 0; i < length; i++)
  sum += buffer[i];

 return (u8) (0 - sum);
}
