
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
find_next_bit(uint32_t mask, int bit)
{
 bit++;
 while (bit < 32 && !(mask & (1 << bit)))
  bit++;
 if (bit != 32)
  return (bit);
 return (-1);
}
