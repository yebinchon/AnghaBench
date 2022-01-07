
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
get_tcb_bit(unsigned char *A, int bit)
{
  int ret=0;
  int ix,shift;

  ix = 127 - (bit>>3);
  shift=bit&0x7;

  ret=(A[ix] >> shift) & 1;
  return ret;
}
