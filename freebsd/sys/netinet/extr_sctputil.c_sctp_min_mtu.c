
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ min (scalar_t__,scalar_t__) ;

uint32_t
sctp_min_mtu(uint32_t mtu1, uint32_t mtu2, uint32_t mtu3)
{
 if (mtu1 > 0) {
  if (mtu2 > 0) {
   if (mtu3 > 0) {
    return (min(mtu1, min(mtu2, mtu3)));
   } else {
    return (min(mtu1, mtu2));
   }
  } else {
   if (mtu3 > 0) {
    return (min(mtu1, mtu3));
   } else {
    return (mtu1);
   }
  }
 } else {
  if (mtu2 > 0) {
   if (mtu3 > 0) {
    return (min(mtu2, mtu3));
   } else {
    return (mtu2);
   }
  } else {
   return (mtu3);
  }
 }
}
