
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;
typedef unsigned int uint16_t ;
typedef scalar_t__ u_int16_t ;


 scalar_t__ ntohs (scalar_t__) ;

__attribute__((used)) static uint32_t
checksum(const void *data, uint16_t len, uint32_t sum)
{
 const uint8_t *addr = data;
 uint32_t i;


 for (i = 0; i < (len & ~1U); i += 2) {
  sum += (u_int16_t)ntohs(*((u_int16_t *)(addr + i)));
  if (sum > 0xFFFF)
   sum -= 0xFFFF;
 }





 if (i < len) {
  sum += addr[i] << 8;
  if (sum > 0xFFFF)
   sum -= 0xFFFF;
 }
 return sum;
}
