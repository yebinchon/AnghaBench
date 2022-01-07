
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int tmp ;
struct executable {int x_checksum_off; int x_len; scalar_t__ x_buf; int x_checksum_len; } ;


 int assert (int) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int range_check (struct executable const*,int,int ,char*) ;

__attribute__((used)) static uint32_t
compute_checksum(const struct executable *x)
{
 uint32_t cksum = 0;
 uint16_t tmp;
 int i;

 range_check(x, x->x_checksum_off, x->x_checksum_len, "PE checksum");

 assert(x->x_checksum_off % 2 == 0);

 for (i = 0; i + sizeof(tmp) < x->x_len; i += 2) {




  if (i == x->x_checksum_off || i == x->x_checksum_off + 2) {
   tmp = 0;
  } else {
   assert(i + sizeof(tmp) <= x->x_len);
   memcpy(&tmp, x->x_buf + i, sizeof(tmp));
  }

  cksum += tmp;
  cksum += cksum >> 16;
  cksum &= 0xffff;
 }

 cksum += cksum >> 16;
 cksum &= 0xffff;

 cksum += x->x_len;

 return (cksum);
}
