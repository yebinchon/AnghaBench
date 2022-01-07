
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int ;
struct fpn {int fp_sign; int* fp_mant; int fp_class; scalar_t__ fp_sticky; } ;
struct fpemu {int fe_cx; TYPE_2__* fe_fpstate; } ;
struct TYPE_4__ {TYPE_1__* fpr; } ;
struct TYPE_3__ {int fpr; } ;


 int DPRINTF (int ,char*) ;
 int DUMPFPN (int ,struct fpn*) ;
 int FPC_QNAN ;
 int FPC_SNAN ;
 int FPE_REG ;
 int FPSCR_VXSNAN ;
 int FP_QUIETBIT ;




 int fpu_dtof (struct fpn*,int,int) ;
 int fpu_itof (struct fpn*,int) ;
 int fpu_stof (struct fpn*,int) ;
 int fpu_xtof (struct fpn*,int ) ;
 int panic (char*,...) ;

void
fpu_explode(struct fpemu *fe, struct fpn *fp, int type, int reg)
{
 u_int s, *space;
 u_int64_t l, *xspace;

 xspace = (u_int64_t *)&fe->fe_fpstate->fpr[reg].fpr;
 l = xspace[0];
 space = (u_int *)&fe->fe_fpstate->fpr[reg].fpr;
 s = space[0];
 fp->fp_sign = s >> 31;
 fp->fp_sticky = 0;
 switch (type) {

 case 129:
  s = fpu_xtof(fp, l);
  break;

 case 130:
  s = fpu_itof(fp, space[1]);
  break;

 case 128:
  s = fpu_stof(fp, s);
  break;

 case 131:
  s = fpu_dtof(fp, s, space[1]);
  break;

 default:
  panic("fpu_explode");
  panic("fpu_explode: invalid type %d", type);
 }

 if (s == FPC_QNAN && (fp->fp_mant[0] & FP_QUIETBIT) == 0) {







  fp->fp_mant[0] |= FP_QUIETBIT;
  fe->fe_cx = FPSCR_VXSNAN;
  s = FPC_SNAN;
 }
 fp->fp_class = s;
 DPRINTF(FPE_REG, ("fpu_explode: %%%c%d => ", (type == 129) ? 'x' :
  ((type == 130) ? 'i' :
   ((type == 128) ? 's' :
    ((type == 131) ? 'd' : '?'))),
  reg));
 DUMPFPN(FPE_REG, fp);
 DPRINTF(FPE_REG, ("\n"));
}
