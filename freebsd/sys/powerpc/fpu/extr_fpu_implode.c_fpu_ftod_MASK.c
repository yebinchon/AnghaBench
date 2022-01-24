#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int ;
struct fpn {int fp_sign; int fp_exp; int* fp_mant; } ;
struct fpemu {int fe_cx; int fe_fpscr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DBL_EXP_BIAS ; 
 int DBL_EXP_INFNAN ; 
 int DBL_FRACBITS ; 
 int DBL_MASK ; 
 int FPSCR_FI ; 
 int FPSCR_OX ; 
 int FPSCR_UX ; 
 int FP_NG ; 
 int FP_NMANT ; 
 scalar_t__ FUNC1 (struct fpn*) ; 
 scalar_t__ FUNC2 (struct fpn*) ; 
 scalar_t__ FUNC3 (struct fpn*) ; 
 int /*<<< orphan*/  FUNC4 (struct fpn*,int) ; 
 scalar_t__ FUNC5 (struct fpemu*,struct fpn*) ; 
 scalar_t__ FUNC6 (struct fpemu*,int) ; 

u_int
FUNC7(struct fpemu *fe, struct fpn *fp, u_int *res)
{
	u_int sign = fp->fp_sign << 31;
	int exp;

#define	DBL_EXP(e)	((e) << (DBL_FRACBITS & 31))
#define	DBL_MASK	(DBL_EXP(1) - 1)

	if (FUNC2(fp)) {
		(void) FUNC4(fp, FP_NMANT - 1 - DBL_FRACBITS);
		exp = DBL_EXP_INFNAN;
		goto done;
	}
	if (FUNC1(fp)) {
		sign |= DBL_EXP(DBL_EXP_INFNAN);
		goto zero;
	}
	if (FUNC3(fp)) {
zero:		res[1] = 0;
		return (sign);
	}

	if ((exp = fp->fp_exp + DBL_EXP_BIAS) <= 0) {
		(void) FUNC4(fp, FP_NMANT - FP_NG - DBL_FRACBITS - exp);
		if (FUNC5(fe, fp) && fp->fp_mant[2] == DBL_EXP(1)) {
			res[1] = 0;
			return (sign | DBL_EXP(1) | 0);
		}
		if ((fe->fe_cx & FPSCR_FI) ||
		    (fe->fe_fpscr & FPSCR_UX))
			fe->fe_cx |= FPSCR_UX;
		exp = 0;
		goto done;
	}
	(void) FUNC4(fp, FP_NMANT - FP_NG - 1 - DBL_FRACBITS);
	if (FUNC5(fe, fp) && fp->fp_mant[2] == DBL_EXP(2))
		exp++;
	if (exp >= DBL_EXP_INFNAN) {
		fe->fe_cx |= FPSCR_OX | FPSCR_UX;
		if (FUNC6(fe, sign)) {
			res[1] = 0;
			return (sign | DBL_EXP(DBL_EXP_INFNAN) | 0);
		}
		res[1] = ~0;
		return (sign | DBL_EXP(DBL_EXP_INFNAN) | DBL_MASK);
	}
done:
	res[1] = fp->fp_mant[3];
	return (sign | DBL_EXP(exp) | (fp->fp_mant[2] & DBL_MASK));
}