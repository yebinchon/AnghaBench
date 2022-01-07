
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {int fp_sign; int fp_exp; int* fp_mant; } ;
struct fpemu {int fe_cx; int fe_fpscr; } ;


 int FPSCR_FI ;
 int FPSCR_UX ;
 int FP_NG ;
 int FP_NMANT ;
 scalar_t__ ISINF (struct fpn*) ;
 scalar_t__ ISNAN (struct fpn*) ;
 scalar_t__ ISZERO (struct fpn*) ;
 int SNG_EXP (int) ;
 int SNG_EXP_BIAS ;
 int SNG_EXP_INFNAN ;
 int SNG_FRACBITS ;
 int SNG_MASK ;
 int fpu_shr (struct fpn*,int) ;
 int panic (char*) ;
 scalar_t__ round (struct fpemu*,struct fpn*) ;
 scalar_t__ toinf (struct fpemu*,int) ;

u_int
fpu_ftos(struct fpemu *fe, struct fpn *fp)
{
 u_int sign = fp->fp_sign << 31;
 int exp;





 if (ISNAN(fp)) {





  (void) fpu_shr(fp, FP_NMANT - 1 - SNG_FRACBITS);
  exp = SNG_EXP_INFNAN;
  goto done;
 }
 if (ISINF(fp))
  return (sign | ((SNG_EXP_INFNAN) << SNG_FRACBITS));
 if (ISZERO(fp))
  return (sign);
 if ((exp = fp->fp_exp + SNG_EXP_BIAS) <= 0) {

  (void) fpu_shr(fp, FP_NMANT - FP_NG - SNG_FRACBITS - exp);
  if (round(fe, fp) && fp->fp_mant[3] == ((1) << SNG_FRACBITS))
   return (sign | ((1) << SNG_FRACBITS) | 0);
  if ((fe->fe_cx & FPSCR_FI) ||
      (fe->fe_fpscr & FPSCR_UX))
   fe->fe_cx |= FPSCR_UX;
  return (sign | ((0) << SNG_FRACBITS) | fp->fp_mant[3]);
 }

 (void) fpu_shr(fp, FP_NMANT - FP_NG - 1 - SNG_FRACBITS);




 if (round(fe, fp) && fp->fp_mant[3] == ((2) << SNG_FRACBITS))
  exp++;
 if (exp >= SNG_EXP_INFNAN) {

  if (toinf(fe, sign))
   return (sign | ((SNG_EXP_INFNAN) << SNG_FRACBITS));
  return (sign | ((SNG_EXP_INFNAN - 1) << SNG_FRACBITS) | (((1) << SNG_FRACBITS) - 1));
 }
done:

 return (sign | ((exp) << SNG_FRACBITS) | (fp->fp_mant[3] & (((1) << SNG_FRACBITS) - 1)));
}
