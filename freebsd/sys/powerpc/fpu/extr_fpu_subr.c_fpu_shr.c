
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {scalar_t__ fp_class; int* fp_mant; int fp_sticky; } ;


 scalar_t__ FPC_NUM ;
 scalar_t__ FPC_ZERO ;
 int FP_NMANT ;
 int ISNAN (struct fpn*) ;
 int panic (char*) ;

int
fpu_shr(struct fpn *fp, int rsh)
{
 u_int m0, m1, m2, m3, s;
 int lsh;






 m0 = fp->fp_mant[0];
 m1 = fp->fp_mant[1];
 m2 = fp->fp_mant[2];
 m3 = fp->fp_mant[3];


 if (rsh >= FP_NMANT) {




  fp->fp_mant[0] = 0;
  fp->fp_mant[1] = 0;
  fp->fp_mant[2] = 0;
  fp->fp_mant[3] = 0;





   fp->fp_sticky = 1;
  return (1);
 }


 s = fp->fp_sticky;
 if (rsh >= 32 * 3) {
  s |= m3 | m2 | m1;
  m3 = m0, m2 = 0, m1 = 0, m0 = 0;
 } else if (rsh >= 32 * 2) {
  s |= m3 | m2;
  m3 = m1, m2 = m0, m1 = 0, m0 = 0;
 } else if (rsh >= 32) {
  s |= m3;
  m3 = m2, m2 = m1, m1 = m0, m0 = 0;
 }


 if ((rsh &= 31) != 0) {
  lsh = 32 - rsh;
  s |= m3 << lsh;
  m3 = (m3 >> rsh) | (m2 << lsh);
  m2 = (m2 >> rsh) | (m1 << lsh);
  m1 = (m1 >> rsh) | (m0 << lsh);
  m0 >>= rsh;
 }
 fp->fp_mant[0] = m0;
 fp->fp_mant[1] = m1;
 fp->fp_mant[2] = m2;
 fp->fp_mant[3] = m3;
 fp->fp_sticky = s;
 return (s);
}
