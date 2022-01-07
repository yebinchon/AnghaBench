
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



__attribute__((used)) static u_int32_t
inc_seq(unsigned is12bit, u_int32_t seq)
{
  seq++;
  if (is12bit) {
    if (seq & 0xfffff000)
      seq = 0;
  } else if (seq & 0xff000000)
    seq = 0;
  return seq;
}
