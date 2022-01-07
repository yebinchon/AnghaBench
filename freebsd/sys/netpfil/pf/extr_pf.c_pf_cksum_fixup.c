
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;



u_int16_t
pf_cksum_fixup(u_int16_t cksum, u_int16_t old, u_int16_t new, u_int8_t udp)
{
 u_int32_t l;

 if (udp && !cksum)
  return (0x0000);
 l = cksum + old - new;
 l = (l >> 16) + (l & 65535);
 l = l & 65535;
 if (udp && !l)
  return (0xFFFF);
 return (l);
}
