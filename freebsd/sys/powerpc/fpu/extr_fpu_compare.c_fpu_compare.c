
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpn {scalar_t__ fp_class; scalar_t__ fp_sign; } ;
struct fpemu {int fe_fpscr; int fe_cx; struct fpn fe_f3; struct fpn fe_f2; struct fpn fe_f1; } ;


 int FPSCR_FE ;
 int FPSCR_FG ;
 int FPSCR_FL ;
 int FPSCR_FU ;
 int FPSCR_VE ;
 int FPSCR_VXSNAN ;
 int FPSCR_VXVC ;
 scalar_t__ ISINF (struct fpn*) ;
 scalar_t__ ISNAN (struct fpn*) ;
 scalar_t__ ISQNAN (struct fpn*) ;
 scalar_t__ ISSNAN (struct fpn*) ;
 scalar_t__ ISZERO (struct fpn*) ;
 int diff (int) ;
 int fpu_sub (struct fpemu*) ;

void
fpu_compare(struct fpemu *fe, int ordered)
{
 struct fpn *a, *b, *r;
 int cc;

 a = &fe->fe_f1;
 b = &fe->fe_f2;
 r = &fe->fe_f3;

 if (ISNAN(a) || ISNAN(b)) {





  cc = FPSCR_FU;
  if (ISSNAN(a) || ISSNAN(b))
   cc |= FPSCR_VXSNAN;
  if (ordered) {
   if (fe->fe_fpscr & FPSCR_VE || ISQNAN(a) || ISQNAN(b))
    cc |= FPSCR_VXVC;
  }
  goto done;
 }





 if (ISZERO(a) && ISZERO(b)) {
  cc = FPSCR_FE;
  goto done;
 }
 if (a->fp_sign) {
  if (!b->fp_sign) {
   cc = FPSCR_FL;
   goto done;
  }
 } else {
  if (b->fp_sign) {
   cc = FPSCR_FG;
   goto done;
  }
 }
 if (a->fp_class < b->fp_class) {
  cc = (a->fp_sign ? ((FPSCR_FL) == FPSCR_FL ? FPSCR_FG : FPSCR_FL) : (FPSCR_FL));
  goto done;
 }
 if (a->fp_class > b->fp_class) {
  cc = (a->fp_sign ? ((FPSCR_FG) == FPSCR_FL ? FPSCR_FG : FPSCR_FL) : (FPSCR_FG));
  goto done;
 }

 if (ISINF(a)) {
  cc = FPSCR_FE;
  goto done;
 }
 fpu_sub(fe);
 if (ISZERO(r))
  cc = FPSCR_FE;
 else if (r->fp_sign)
  cc = FPSCR_FL;
 else
  cc = FPSCR_FG;
done:
 fe->fe_cx = cc;
}
