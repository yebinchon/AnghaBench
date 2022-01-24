#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int ;
struct fpn {int fp_sign; int* fp_mant; int fp_class; scalar_t__ fp_sticky; } ;
struct fpemu {int /*<<< orphan*/  fe_cx; TYPE_2__* fe_fpstate; } ;
struct TYPE_4__ {TYPE_1__* fpr; } ;
struct TYPE_3__ {int /*<<< orphan*/  fpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fpn*) ; 
 int FPC_QNAN ; 
 int FPC_SNAN ; 
 int /*<<< orphan*/  FPE_REG ; 
 int /*<<< orphan*/  FPSCR_VXSNAN ; 
 int FP_QUIETBIT ; 
#define  FTYPE_DBL 131 
#define  FTYPE_INT 130 
#define  FTYPE_LNG 129 
#define  FTYPE_SNG 128 
 int FUNC2 (struct fpn*,int,int) ; 
 int FUNC3 (struct fpn*,int) ; 
 int FUNC4 (struct fpn*,int) ; 
 int FUNC5 (struct fpn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7(struct fpemu *fe, struct fpn *fp, int type, int reg)
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

	case FTYPE_LNG:
		s = FUNC5(fp, l);
		break;

	case FTYPE_INT:
		s = FUNC3(fp, space[1]);
		break;

	case FTYPE_SNG:
		s = FUNC4(fp, s);
		break;

	case FTYPE_DBL:
		s = FUNC2(fp, s, space[1]);
		break;

	default:
		FUNC6("fpu_explode");
		FUNC6("fpu_explode: invalid type %d", type);
	}

	if (s == FPC_QNAN && (fp->fp_mant[0] & FP_QUIETBIT) == 0) {
		/*
		 * Input is a signalling NaN.  All operations that return
		 * an input NaN operand put it through a ``NaN conversion'',
		 * which basically just means ``turn on the quiet bit''.
		 * We do this here so that all NaNs internally look quiet
		 * (we can tell signalling ones by their class).
		 */
		fp->fp_mant[0] |= FP_QUIETBIT;
		fe->fe_cx = FPSCR_VXSNAN;	/* assert invalid operand */
		s = FPC_SNAN;
	}
	fp->fp_class = s;
	FUNC0(FPE_REG, ("fpu_explode: %%%c%d => ", (type == FTYPE_LNG) ? 'x' :
		((type == FTYPE_INT) ? 'i' : 
			((type == FTYPE_SNG) ? 's' :
				((type == FTYPE_DBL) ? 'd' : '?'))),
		reg));
	FUNC1(FPE_REG, fp);
	FUNC0(FPE_REG, ("\n"));
}