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
struct fpn {int dummy; } ;
struct fpemu {int fe_cx; int /*<<< orphan*/  fe_f2; } ;

/* Variables and functions */
#define  EABS 141 
#define  EADD 140 
#define  ECMPEQ 139 
#define  ECMPGT 138 
#define  ECMPLT 137 
#define  ECTSI 136 
#define  ECTSIZ 135 
#define  ECTUI 134 
#define  ECTUIZ 133 
#define  EDIV 132 
#define  EMUL 131 
#define  ENABS 130 
#define  ENEG 129 
#define  ESUB 128 
 int FPSCR_FE ; 
 int FPSCR_FG ; 
 int FPSCR_FL ; 
 int FPSCR_RN ; 
 int FP_RZ ; 
 int SPE_INST_MASK ; 
 struct fpn* FUNC0 (struct fpemu*) ; 
 int /*<<< orphan*/  FUNC1 (struct fpemu*,int /*<<< orphan*/ ) ; 
 struct fpn* FUNC2 (struct fpemu*) ; 
 struct fpn* FUNC3 (struct fpemu*) ; 
 struct fpn* FUNC4 (struct fpemu*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fpemu*,int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int
FUNC7(uint32_t instr, struct fpemu *fpemu,
    struct fpn **result, uint32_t *iresult)
{
	switch (instr & SPE_INST_MASK) {
	case EABS:
	case ENABS:
	case ENEG:
		/* Taken care of elsewhere. */
		break;
	case ECTUIZ:
		fpemu->fe_cx &= ~FPSCR_RN;
		fpemu->fe_cx |= FP_RZ;
	case ECTUI:
		FUNC6(fpemu, &fpemu->fe_f2, iresult, 0);
		return (-1);
	case ECTSIZ:
		fpemu->fe_cx &= ~FPSCR_RN;
		fpemu->fe_cx |= FP_RZ;
	case ECTSI:
		FUNC6(fpemu, &fpemu->fe_f2, iresult, 1);
		return (-1);
	case EADD:
		*result = FUNC0(fpemu);
		break;
	case ESUB:
		*result = FUNC4(fpemu);
		break;
	case EMUL:
		*result = FUNC3(fpemu);
		break;
	case EDIV:
		*result = FUNC2(fpemu);
		break;
	case ECMPGT:
		FUNC1(fpemu, 0);
		if (fpemu->fe_cx & FPSCR_FG)
			return (1);
		return (0);
	case ECMPLT:
		FUNC1(fpemu, 0);
		if (fpemu->fe_cx & FPSCR_FL)
			return (1);
		return (0);
	case ECMPEQ:
		FUNC1(fpemu, 0);
		if (fpemu->fe_cx & FPSCR_FE)
			return (1);
		return (0);
	default:
		FUNC5("Unknown instruction %x\n", instr);
	}

	return (-1);
}