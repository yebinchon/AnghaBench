
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui64 ;


 int get_tcb_bit (unsigned char*,int) ;

__attribute__((used)) static ui64
get_tcb_bits (unsigned char *A, int hi, int lo)
{
  ui64 ret=0;

  if (lo>hi) {
    int temp=lo;
    lo=hi;
    hi=temp;
  }

  while (hi>=lo) {
    ret = (ret<<1) | get_tcb_bit(A,hi);
    --hi;
  }

  return ret;
}
