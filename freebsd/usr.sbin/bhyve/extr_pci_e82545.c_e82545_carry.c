
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t
e82545_carry(uint32_t sum)
{

 sum = (sum & 0xFFFF) + (sum >> 16);
 if (sum > 0xFFFF)
  sum -= 0xFFFF;
 return (sum);
}
