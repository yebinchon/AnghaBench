
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fpn {int fp_sign; int* fp_mant; int fp_class; scalar_t__ fp_sticky; } ;
struct fpemu {int fe_cx; } ;



 int FPC_QNAN ;
 int FPC_SNAN ;
 int FPSCR_VXSNAN ;
 int FP_QUIETBIT ;

 int fpu_dtof (struct fpn*,int,int) ;
 int fpu_stof (struct fpn*,int) ;

__attribute__((used)) static int
spe_explode(struct fpemu *fe, struct fpn *fp, uint32_t type,
    uint32_t hi, uint32_t lo)
{
 uint32_t s;

 fp->fp_sign = hi >> 31;
 fp->fp_sticky = 0;
 switch (type) {
 case 128:
  s = fpu_stof(fp, hi);
  break;

 case 129:
  s = fpu_dtof(fp, hi, lo);
  break;
 }

 if (s == FPC_QNAN && (fp->fp_mant[0] & FP_QUIETBIT) == 0) {







  fp->fp_mant[0] |= FP_QUIETBIT;
  fe->fe_cx = FPSCR_VXSNAN;
  s = FPC_SNAN;
 }
 fp->fp_class = s;

 return (0);
}
