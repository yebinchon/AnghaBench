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
typedef  int /*<<< orphan*/  u_int ;
struct fpn {int dummy; } ;
struct fpemu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FPE_REG ; 
#define  FTYPE_DBL 131 
#define  FTYPE_INT 130 
#define  FTYPE_LNG 129 
#define  FTYPE_SNG 128 
 int /*<<< orphan*/  FUNC1 (struct fpemu*,struct fpn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fpemu*,struct fpn*) ; 
 int /*<<< orphan*/  FUNC3 (struct fpemu*,struct fpn*) ; 
 int /*<<< orphan*/  FUNC4 (struct fpemu*,struct fpn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(struct fpemu *fe, struct fpn *fp, int type, u_int *space)
{

	switch (type) {

	case FTYPE_LNG:
		space[0] = FUNC4(fe, fp, space);
		FUNC0(FPE_REG, ("fpu_implode: long %x %x\n",
			space[0], space[1]));
		break;

	case FTYPE_INT:
		space[0] = 0;
		space[1] = FUNC2(fe, fp);
		FUNC0(FPE_REG, ("fpu_implode: int %x\n",
			space[1]));
		break;

	case FTYPE_SNG:
		space[0] = FUNC3(fe, fp);
		FUNC0(FPE_REG, ("fpu_implode: single %x\n",
			space[0]));
		break;

	case FTYPE_DBL:
		space[0] = FUNC1(fe, fp, space);
		FUNC0(FPE_REG, ("fpu_implode: double %x %x\n",
			space[0], space[1]));
		break;		break;

	default:
		FUNC5("fpu_implode: invalid type %d", type);
	}
}