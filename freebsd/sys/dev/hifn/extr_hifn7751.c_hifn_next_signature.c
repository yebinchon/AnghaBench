
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;



__attribute__((used)) static u_int32_t
hifn_next_signature(u_int32_t a, u_int cnt)
{
 int i;
 u_int32_t v;

 for (i = 0; i < cnt; i++) {


  v = a & 0x80080125;
  v ^= v >> 16;
  v ^= v >> 8;
  v ^= v >> 4;
  v ^= v >> 2;
  v ^= v >> 1;

  a = (v & 1) ^ (a << 1);
 }

 return a;
}
