
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;


 scalar_t__ CALC_BITS ;
 int FLT_MANT_DIG ;
 int FLT_MAX_EXP ;
 scalar_t__ LOG2_1M ;
 int MANT_MASK ;
 int fls (int) ;
 int printf (char*,int,int,...) ;

__attribute__((used)) static uint32_t
encode_timeval(struct timeval tv)
{
 int log2_s;
 int val, exp;
 int norm_exp;
 int shift;






 if (tv.tv_sec == 0) {
  if (tv.tv_usec == 0)
   return (0);
  exp = 0;
  val = tv.tv_usec;
 } else {




  log2_s = fls(tv.tv_sec) - 1;
  if (log2_s + LOG2_1M < CALC_BITS) {
   exp = 0;
   val = 1000000 * tv.tv_sec + tv.tv_usec;
  } else {
   exp = log2_s + LOG2_1M - CALC_BITS;
   val = (unsigned int)(((uint64_t)1000000 * tv.tv_sec +
       tv.tv_usec) >> exp);
  }
 }

 norm_exp = fls(val) - 1;
 shift = FLT_MANT_DIG - norm_exp - 1;






 return (((FLT_MAX_EXP - 1 + exp + norm_exp) << (FLT_MANT_DIG - 1)) |
     ((shift > 0 ? val << shift : val >> -shift) & MANT_MASK));
}
