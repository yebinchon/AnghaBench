
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct fpn {scalar_t__* fp_mant; scalar_t__ fp_exp; int fp_sticky; int fp_sign; } ;
struct fpemu {int fe_cx; struct fpn fe_f2; struct fpn fe_f1; } ;


 int DPRINTF (int ,char*) ;
 int DUMPFPN (int ,struct fpn*) ;
 int FPE_REG ;
 int FPSCR_VXIMZ ;
 int FPSCR_VXSNAN ;
 int FPU_DECL_CARRY ;
 scalar_t__ FP_2 ;
 int FP_NG ;
 scalar_t__ ISINF (struct fpn*) ;
 scalar_t__ ISNAN (struct fpn*) ;
 scalar_t__ ISZERO (struct fpn*) ;
 int ORDER (struct fpn*,struct fpn*) ;
 int SHR1 ;
 int SHR32 ;
 int STEP ;
 struct fpn* fpu_newnan (struct fpemu*) ;

struct fpn *
fpu_mul(struct fpemu *fe)
{
 struct fpn *x = &fe->fe_f1, *y = &fe->fe_f2;
 u_int a3, a2, a1, a0, x3, x2, x1, x0, bit, m;
 int sticky;
 FPU_DECL_CARRY;
 DPRINTF(FPE_REG, ("fpu_mul:\n"));
 DUMPFPN(FPE_REG, x);
 DUMPFPN(FPE_REG, y);
 DPRINTF(FPE_REG, ("=>\n"));

 ORDER(x, y);
 if (ISNAN(y)) {
  y->fp_sign ^= x->fp_sign;
  fe->fe_cx |= FPSCR_VXSNAN;
  DUMPFPN(FPE_REG, y);
  return (y);
 }
 if (ISINF(y)) {
  if (ISZERO(x)) {
   fe->fe_cx |= FPSCR_VXIMZ;
   return (fpu_newnan(fe));
  }
  y->fp_sign ^= x->fp_sign;
   DUMPFPN(FPE_REG, y);
  return (y);
 }
 if (ISZERO(x)) {
  x->fp_sign ^= y->fp_sign;
  DUMPFPN(FPE_REG, x);
  return (x);
 }






 x3 = x->fp_mant[3];
 x2 = x->fp_mant[2];
 x1 = x->fp_mant[1];
 x0 = x->fp_mant[0];
 sticky = a3 = a2 = a1 = a0 = 0;
 if ((m = y->fp_mant[3]) == 0) {

 } else {
  bit = 1 << FP_NG;
  do {
   sticky |= a3 & 1, a3 = (a3 >> 1) | (a2 << 31), a2 = (a2 >> 1) | (a1 << 31), a1 = (a1 >> 1) | (a0 << 31), a0 >>= 1; if (bit & m) { FPU_ADDS(a3, a3, x3); FPU_ADDCS(a2, a2, x2); FPU_ADDCS(a1, a1, x1); FPU_ADDC(a0, a0, x0); }; bit <<= 1;
  } while (bit != 0);
 }
 if ((m = y->fp_mant[2]) == 0) {
  sticky |= a3, a3 = a2, a2 = a1, a1 = a0, a0 = 0;
 } else {
  bit = 1;
  do {
   sticky |= a3 & 1, a3 = (a3 >> 1) | (a2 << 31), a2 = (a2 >> 1) | (a1 << 31), a1 = (a1 >> 1) | (a0 << 31), a0 >>= 1; if (bit & m) { FPU_ADDS(a3, a3, x3); FPU_ADDCS(a2, a2, x2); FPU_ADDCS(a1, a1, x1); FPU_ADDC(a0, a0, x0); }; bit <<= 1;
  } while (bit != 0);
 }
 if ((m = y->fp_mant[1]) == 0) {
  sticky |= a3, a3 = a2, a2 = a1, a1 = a0, a0 = 0;
 } else {
  bit = 1;
  do {
   sticky |= a3 & 1, a3 = (a3 >> 1) | (a2 << 31), a2 = (a2 >> 1) | (a1 << 31), a1 = (a1 >> 1) | (a0 << 31), a0 >>= 1; if (bit & m) { FPU_ADDS(a3, a3, x3); FPU_ADDCS(a2, a2, x2); FPU_ADDCS(a1, a1, x1); FPU_ADDC(a0, a0, x0); }; bit <<= 1;
  } while (bit != 0);
 }
 m = y->fp_mant[0];
 bit = 1;
 do {
  sticky |= a3 & 1, a3 = (a3 >> 1) | (a2 << 31), a2 = (a2 >> 1) | (a1 << 31), a1 = (a1 >> 1) | (a0 << 31), a0 >>= 1; if (bit & m) { FPU_ADDS(a3, a3, x3); FPU_ADDCS(a2, a2, x2); FPU_ADDCS(a1, a1, x1); FPU_ADDC(a0, a0, x0); }; bit <<= 1;
 } while (bit <= m);






 m = x->fp_exp + y->fp_exp;
 if (a0 >= FP_2) {
  sticky |= a3 & 1, a3 = (a3 >> 1) | (a2 << 31), a2 = (a2 >> 1) | (a1 << 31), a1 = (a1 >> 1) | (a0 << 31), a0 >>= 1;
  m++;
 }
 x->fp_sign ^= y->fp_sign;
 x->fp_exp = m;
 x->fp_sticky = sticky;
 x->fp_mant[3] = a3;
 x->fp_mant[2] = a2;
 x->fp_mant[1] = a1;
 x->fp_mant[0] = a0;

 DUMPFPN(FPE_REG, x);
 return (x);
}
