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
typedef  int uint32_t ;
struct trapframe {unsigned int* fixreg; int cr; scalar_t__ srr0; } ;
struct fpn {int dummy; } ;
struct fpemu {struct fpn fe_f2; struct fpn fe_f1; struct fpn fe_f3; int /*<<< orphan*/  fe_cx; } ;
typedef  int /*<<< orphan*/  fpemu ;

/* Variables and functions */
#define  DOUBLE 152 
#define  DPFP 151 
#define  ECMPEQ 150 
#define  ECMPGT 149 
#define  ECMPLT 148 
#define  ECTSI 147 
#define  ECTSIZ 146 
#define  ECTUI 145 
#define  ECTUIZ 144 
#define  EFDABS 143 
#define  EFDCFS 142 
#define  EFDNABS 141 
#define  EFDNEG 140 
#define  EFSABS 139 
#define  EFSCFD 138 
#define  EFSNABS 137 
#define  EFSNEG 136 
#define  EVFSABS 135 
 int EVFSCMPEQ ; 
 int EVFSCMPGT ; 
 int EVFSCMPLT ; 
#define  EVFSNABS 134 
#define  EVFSNEG 133 
#define  NONE 132 
 int OPC_SHIFT ; 
 int PSL_VEC ; 
#define  SINGLE 131 
#define  SPE 130 
 int SPEFSCR_FINVS ; 
 int SPE_INST_MASK ; 
 int SPE_OPC ; 
#define  SPFP 129 
 int /*<<< orphan*/  SPR_SPEFSCR ; 
#define  VECTOR 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fpemu*,struct fpn*,int*) ; 
 int FUNC2 (struct fpemu*,struct fpn*) ; 
 int FUNC3 (void*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct fpemu*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int,struct fpemu*,struct fpn**,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct fpemu*,struct fpn*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 unsigned int FUNC13 (int) ; 

void
FUNC14(struct trapframe *frame)
{
	struct fpemu fpemu;
	struct fpn *result;
	uint32_t instr, instr_sec_op;
	uint32_t cr_shift, ra, rb, rd, src;
	uint32_t high, low, res, tmp; /* For vector operations. */
	uint32_t spefscr = 0;
	uint32_t ftod_res[2];
	int width; /* Single, Double, Vector, Integer */
	int err;
	uint32_t msr;

	err = FUNC3((void *)frame->srr0, &instr);
	
	if (err != 0)
		return;
		/* Fault. */;

	if ((instr >> OPC_SHIFT) != SPE_OPC)
		return;

	msr = FUNC5();
	/*
	 * 'cr' field is the upper 3 bits of rd.  Magically, since a) rd is 5
	 * bits, b) each 'cr' field is 4 bits, and c) Only the 'GT' bit is
	 * modified for most compare operations, the full value of rd can be
	 * used as a shift value.
	 */
	rd = (instr >> 21) & 0x1f;
	ra = (instr >> 16) & 0x1f;
	rb = (instr >> 11) & 0x1f;
	src = (instr >> 5) & 0x7;
	cr_shift = 28 - (rd & 0x1f);

	instr_sec_op = (instr & 0x7ff);

	FUNC4(&fpemu, 0, sizeof(fpemu));

	width = NONE;
	switch (src) {
	case SPE:
		FUNC7(msr | PSL_VEC);
		switch (instr_sec_op) {
		case EVFSABS:
			high = FUNC13(ra) & ~(1U << 31);
			frame->fixreg[rd] = frame->fixreg[ra] & ~(1U << 31);
			FUNC12(rd, high);
			break;
		case EVFSNABS:
			high = FUNC13(ra) | (1U << 31);
			frame->fixreg[rd] = frame->fixreg[ra] | (1U << 31);
			FUNC12(rd, high);
			break;
		case EVFSNEG:
			high = FUNC13(ra) ^ (1U << 31);
			frame->fixreg[rd] = frame->fixreg[ra] ^ (1U << 31);
			FUNC12(rd, high);
			break;
		default:
			/* High word */
			FUNC11(&fpemu, &fpemu.fe_f1, SINGLE,
			    FUNC13(ra), 0);
			FUNC11(&fpemu, &fpemu.fe_f2, SINGLE,
			    FUNC13(rb), 0);
			high = FUNC10(instr_sec_op, &fpemu, &result,
			    &tmp);

			if (high < 0)
				FUNC12(rd, tmp);

			spefscr = FUNC0(fpemu.fe_cx) << 16;
			/* Clear the fpemu to start over on the lower bits. */
			FUNC4(&fpemu, 0, sizeof(fpemu));

			/* Now low word */
			FUNC11(&fpemu, &fpemu.fe_f1, SINGLE,
			    frame->fixreg[ra], 0);
			FUNC11(&fpemu, &fpemu.fe_f2, SINGLE,
			    frame->fixreg[rb], 0);
			spefscr |= FUNC0(fpemu.fe_cx);
			low = FUNC10(instr_sec_op, &fpemu, &result,
			    &frame->fixreg[rd]);
			if (instr_sec_op == EVFSCMPEQ ||
			    instr_sec_op == EVFSCMPGT ||
			    instr_sec_op == EVFSCMPLT) {
				res = (high << 3) | (low << 2) |
				    ((high | low) << 1) | (high & low);
				width = NONE;
			} else
				width = VECTOR;
			break;
		}
		goto end;

	case SPFP:
		switch (instr_sec_op) {
		case EFSABS:
			frame->fixreg[rd] = frame->fixreg[ra] & ~(1U << 31);
			break;
		case EFSNABS:
			frame->fixreg[rd] = frame->fixreg[ra] | (1U << 31);
			break;
		case EFSNEG:
			frame->fixreg[rd] = frame->fixreg[ra] ^ (1U << 31);
			break;
		case EFSCFD:
			FUNC7(msr | PSL_VEC);
			FUNC11(&fpemu, &fpemu.fe_f3, DOUBLE,
			    FUNC13(rb), frame->fixreg[rb]);
			result = &fpemu.fe_f3;
			width = SINGLE;
			break;
		default:
			FUNC11(&fpemu, &fpemu.fe_f1, SINGLE,
			    frame->fixreg[ra], 0);
			FUNC11(&fpemu, &fpemu.fe_f2, SINGLE,
			    frame->fixreg[rb], 0);
			width = SINGLE;
		}
		break;
	case DPFP:
		FUNC7(msr | PSL_VEC);
		switch (instr_sec_op) {
		case EFDABS:
			high = FUNC13(ra) & ~(1U << 31);
			frame->fixreg[rd] = frame->fixreg[ra];
			FUNC12(rd, high);
			break;
		case EFDNABS:
			high = FUNC13(ra) | (1U << 31);
			frame->fixreg[rd] = frame->fixreg[ra];
			FUNC12(rd, high);
			break;
		case EFDNEG:
			high = FUNC13(ra) ^ (1U << 31);
			frame->fixreg[rd] = frame->fixreg[ra];
			FUNC12(rd, high);
			break;
		case EFDCFS:
			FUNC11(&fpemu, &fpemu.fe_f3, SINGLE,
			    frame->fixreg[rb], 0);
			result = &fpemu.fe_f3;
			width = DOUBLE;
			break;
		default:
			FUNC11(&fpemu, &fpemu.fe_f1, DOUBLE,
			    FUNC13(ra), frame->fixreg[ra]);
			FUNC11(&fpemu, &fpemu.fe_f2, DOUBLE,
			    FUNC13(rb), frame->fixreg[rb]);
			width = DOUBLE;
		}
		break;
	}
	switch (instr_sec_op) {
	case EFDCFS:
	case EFSCFD:
		/* Already handled. */
		break;
	default:
		res = FUNC10(instr_sec_op, &fpemu, &result,
		    &frame->fixreg[rd]);
		if (res != -1)
			res <<= 2;
		break;
	}

	switch (instr_sec_op & SPE_INST_MASK) {
	case ECMPEQ:
	case ECMPGT:
	case ECMPLT:
		frame->cr &= ~(0xf << cr_shift);
		frame->cr |= (res << cr_shift);
		break;
	case ECTUI:
	case ECTUIZ:
	case ECTSI:
	case ECTSIZ:
		break;
	default:
		switch (width) {
		case NONE:
		case VECTOR:
			break;
		case SINGLE:
			frame->fixreg[rd] = FUNC2(&fpemu, result);
			break;
		case DOUBLE:
			FUNC12(rd, FUNC1(&fpemu, result, ftod_res));
			frame->fixreg[rd] = ftod_res[1];
			break;
		default:
			FUNC9("Unknown storage width %d", width);
			break;
		}
	}

end:
	spefscr |= (FUNC6(SPR_SPEFSCR) & ~SPEFSCR_FINVS);
	FUNC8(SPR_SPEFSCR, spefscr);
	frame->srr0 += 4;
	FUNC7(msr);

	return;
}