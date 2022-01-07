
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t
me_in_cksum(uint16_t *p, int nwords)
{
 uint32_t sum = 0;

 while (nwords-- > 0)
  sum += *p++;
 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);
 return (~sum);
}
