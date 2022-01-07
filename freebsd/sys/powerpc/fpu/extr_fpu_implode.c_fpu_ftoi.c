
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {int fp_sign; int fp_class; int fp_exp; int* fp_mant; } ;
struct fpemu {int fe_cx; } ;




 int FPSCR_UX ;
 int FPSCR_VXCVI ;
 int FP_NMANT ;
 int fpu_shr (struct fpn*,int ) ;

u_int
fpu_ftoi(struct fpemu *fe, struct fpn *fp)
{
 u_int i;
 int sign, exp;

 sign = fp->fp_sign;
 switch (fp->fp_class) {

 case 128:
  return (0);

 case 129:
  if ((exp = fp->fp_exp) >= 32)
   break;

  if (fpu_shr(fp, FP_NMANT - 1 - exp) != 0)
   fe->fe_cx |= FPSCR_UX;
  i = fp->fp_mant[3];
  if (i >= ((u_int)0x80000000 + sign))
   break;
  return (sign ? -i : i);

 default:
  break;
 }

 fe->fe_cx |= FPSCR_VXCVI;
 return (0x7fffffff + sign);
}
