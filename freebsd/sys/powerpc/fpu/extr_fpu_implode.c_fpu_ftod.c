
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {int fp_sign; int fp_exp; int* fp_mant; } ;
struct fpemu {int fe_cx; int fe_fpscr; } ;


 int DBL_EXP (int) ;
 int DBL_EXP_BIAS ;
 int DBL_EXP_INFNAN ;
 int DBL_FRACBITS ;
 int DBL_MASK ;
 int FPSCR_FI ;
 int FPSCR_OX ;
 int FPSCR_UX ;
 int FP_NG ;
 int FP_NMANT ;
 scalar_t__ ISINF (struct fpn*) ;
 scalar_t__ ISNAN (struct fpn*) ;
 scalar_t__ ISZERO (struct fpn*) ;
 int fpu_shr (struct fpn*,int) ;
 scalar_t__ round (struct fpemu*,struct fpn*) ;
 scalar_t__ toinf (struct fpemu*,int) ;

u_int
fpu_ftod(struct fpemu *fe, struct fpn *fp, u_int *res)
{
 u_int sign = fp->fp_sign << 31;
 int exp;




 if (ISNAN(fp)) {
  (void) fpu_shr(fp, FP_NMANT - 1 - DBL_FRACBITS);
  exp = DBL_EXP_INFNAN;
  goto done;
 }
 if (ISINF(fp)) {
  sign |= ((DBL_EXP_INFNAN) << (DBL_FRACBITS & 31));
  goto zero;
 }
 if (ISZERO(fp)) {
zero: res[1] = 0;
  return (sign);
 }

 if ((exp = fp->fp_exp + DBL_EXP_BIAS) <= 0) {
  (void) fpu_shr(fp, FP_NMANT - FP_NG - DBL_FRACBITS - exp);
  if (round(fe, fp) && fp->fp_mant[2] == ((1) << (DBL_FRACBITS & 31))) {
   res[1] = 0;
   return (sign | ((1) << (DBL_FRACBITS & 31)) | 0);
  }
  if ((fe->fe_cx & FPSCR_FI) ||
      (fe->fe_fpscr & FPSCR_UX))
   fe->fe_cx |= FPSCR_UX;
  exp = 0;
  goto done;
 }
 (void) fpu_shr(fp, FP_NMANT - FP_NG - 1 - DBL_FRACBITS);
 if (round(fe, fp) && fp->fp_mant[2] == ((2) << (DBL_FRACBITS & 31)))
  exp++;
 if (exp >= DBL_EXP_INFNAN) {
  fe->fe_cx |= FPSCR_OX | FPSCR_UX;
  if (toinf(fe, sign)) {
   res[1] = 0;
   return (sign | ((DBL_EXP_INFNAN) << (DBL_FRACBITS & 31)) | 0);
  }
  res[1] = ~0;
  return (sign | ((DBL_EXP_INFNAN) << (DBL_FRACBITS & 31)) | (((1) << (DBL_FRACBITS & 31)) - 1));
 }
done:
 res[1] = fp->fp_mant[3];
 return (sign | ((exp) << (DBL_FRACBITS & 31)) | (fp->fp_mant[2] & (((1) << (DBL_FRACBITS & 31)) - 1)));
}
