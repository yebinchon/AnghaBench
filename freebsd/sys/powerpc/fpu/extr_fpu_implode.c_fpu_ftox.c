
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int ;
struct fpn {int fp_sign; int fp_class; int fp_exp; int* fp_mant; } ;
struct fpemu {int fe_cx; } ;




 int FPSCR_UX ;
 int FPSCR_VXCVI ;
 int FP_NMANT ;
 int fpu_shr (struct fpn*,int ) ;

u_int
fpu_ftox(struct fpemu *fe, struct fpn *fp, u_int *res)
{
 u_int64_t i;
 int sign, exp;

 sign = fp->fp_sign;
 switch (fp->fp_class) {

 case 128:
  res[1] = 0;
  return (0);

 case 129:
  if ((exp = fp->fp_exp) >= 64)
   break;

  if (fpu_shr(fp, FP_NMANT - 1 - exp) != 0)
   fe->fe_cx |= FPSCR_UX;
  i = ((u_int64_t)fp->fp_mant[2]<<32)|fp->fp_mant[3];
  if (i >= ((u_int64_t)0x8000000000000000LL + sign))
   break;
  return (sign ? -i : i);

 default:
  break;
 }

 fe->fe_cx |= FPSCR_VXCVI;
 return (0x7fffffffffffffffLL + sign);
}
