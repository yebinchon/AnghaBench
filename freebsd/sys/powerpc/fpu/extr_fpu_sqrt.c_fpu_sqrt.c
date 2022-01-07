
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {int* fp_mant; int fp_exp; int fp_sticky; scalar_t__ fp_sign; int fp_class; } ;
struct fpemu {int fe_cx; struct fpn fe_f1; } ;


 int DOUBLE_X ;
 int DPRINTF (int ,char*) ;
 int DUMPFPN (int ,struct fpn*) ;
 int EVEN_DOUBLE ;
 int FPC_INF ;
 int FPE_REG ;
 int FPSCR_VXSNAN ;
 int FPSCR_VXSQRT ;
 int FPSCR_ZX ;
 int FPU_DECL_CARRY ;
 int FPU_SUBC (int,int,int) ;
 int FPU_SUBCS (int,int,int) ;
 int FPU_SUBS (int,int,int) ;
 int FP_1 ;
 scalar_t__ ISINF (struct fpn*) ;
 scalar_t__ ISNAN (struct fpn*) ;
 scalar_t__ ISZERO (struct fpn*) ;
 int ODD_DOUBLE ;
 struct fpn* fpu_newnan (struct fpemu*) ;
 int t0 ;
 int t1 ;
 int t2 ;
 int t3 ;

struct fpn *
fpu_sqrt(struct fpemu *fe)
{
 struct fpn *x = &fe->fe_f1;
 u_int bit, q, tt;
 u_int x0, x1, x2, x3;
 u_int y0, y1, y2, y3;
 u_int d0, d1, d2, d3;
 int e;
 FPU_DECL_CARRY;
 DPRINTF(FPE_REG, ("fpu_sqer:\n"));
 DUMPFPN(FPE_REG, x);
 DPRINTF(FPE_REG, ("=>\n"));
 if (ISNAN(x)) {
  fe->fe_cx |= FPSCR_VXSNAN;
  DUMPFPN(FPE_REG, x);
  return (x);
 }
 if (ISZERO(x)) {
  fe->fe_cx |= FPSCR_ZX;
  x->fp_class = FPC_INF;
  DUMPFPN(FPE_REG, x);
  return (x);
 }
 if (x->fp_sign) {
  fe->fe_cx |= FPSCR_VXSQRT;
  return (fpu_newnan(fe));
 }
 if (ISINF(x)) {
  DUMPFPN(FPE_REG, x);
  return (x);
 }
 x0 = x->fp_mant[0];
 x1 = x->fp_mant[1];
 x2 = x->fp_mant[2];
 x3 = x->fp_mant[3];
 e = x->fp_exp;
 if (e & 1)
  { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };

 x->fp_exp = e >> 1;
 bit = FP_1;
 { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };

  q = bit;
  x0 -= bit;
  y0 = bit << 1;

           ;
 while ((bit >>= 1) != 0) {
  { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
  tt = y0 | bit;
  if (x0 >= tt) {
   x0 -= tt;
   q |= bit;
   y0 |= bit << 1;
  }
            ;
 }
 x->fp_mant[0] = q;





 q = 0;
 y1 = 0;
 bit = 1 << 31;
 { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
 tt = bit;
 FPU_SUBS(d1, x1, tt);
 FPU_SUBC(d0, x0, y0);
 if ((int)d0 >= 0) {
  x0 = d0, x1 = d1;
  q = bit;
  y0 |= 1;
 }
           ;
 while ((bit >>= 1) != 0) {
  { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
  tt = y1 | bit;
  FPU_SUBS(d1, x1, tt);
  FPU_SUBC(d0, x0, y0);
  if ((int)d0 >= 0) {
   x0 = d0, x1 = d1;
   q |= bit;
   y1 |= bit << 1;
  }
            ;
 }
 x->fp_mant[1] = q;





 q = 0;
 y2 = 0;
 bit = 1 << 31;
 { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
 tt = bit;
 FPU_SUBS(d2, x2, tt);
 FPU_SUBCS(d1, x1, y1);
 FPU_SUBC(d0, x0, y0);
 if ((int)d0 >= 0) {
  x0 = d0, x1 = d1, x2 = d2;
  q = bit;
  y1 |= 1;
 }
           ;
 while ((bit >>= 1) != 0) {
  { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
  tt = y2 | bit;
  FPU_SUBS(d2, x2, tt);
  FPU_SUBCS(d1, x1, y1);
  FPU_SUBC(d0, x0, y0);
  if ((int)d0 >= 0) {
   x0 = d0, x1 = d1, x2 = d2;
   q |= bit;
   y2 |= bit << 1;
  }
            ;
 }
 x->fp_mant[2] = q;





 q = 0;
 y3 = 0;
 bit = 1 << 31;
 { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
 tt = bit;
 FPU_SUBS(d3, x3, tt);
 FPU_SUBCS(d2, x2, y2);
 FPU_SUBCS(d1, x1, y1);
 FPU_SUBC(d0, x0, y0);
 if ((int)d0 >= 0) {
  x0 = d0, x1 = d1, x2 = d2; x3 = d3;
  q = bit;
  y2 |= 1;
 }
           ;
 while ((bit >>= 1) != 0) {
  { x0 = (x0 << 1) | (x1 >> 31); x1 = (x1 << 1) | (x2 >> 31); x2 = (x2 << 1) | (x3 >> 31); x3 <<= 1; };
  tt = y3 | bit;
  FPU_SUBS(d3, x3, tt);
  FPU_SUBCS(d2, x2, y2);
  FPU_SUBCS(d1, x1, y1);
  FPU_SUBC(d0, x0, y0);
  if ((int)d0 >= 0) {
   x0 = d0, x1 = d1, x2 = d2; x3 = d3;
   q |= bit;
   y3 |= bit << 1;
  }
            ;
 }
 x->fp_mant[3] = q;





 x->fp_sticky = x0 | x1 | x2 | x3;
 DUMPFPN(FPE_REG, x);
 return (x);
}
