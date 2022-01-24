#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int hw_mode; } ;
struct ecore_hwfn {TYPE_1__ hw_info; TYPE_2__* p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_9__ {int type; int num_ports_in_engine; scalar_t__ b_is_emul_full; int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int,char*,int) ; 
 int ECORE_INVAL ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  ECORE_MF_OVLAN_CLSS ; 
 int ECORE_MSG_IFUP ; 
 int ECORE_MSG_PROBE ; 
 int ECORE_SUCCESS ; 
 int MODE_100G ; 
 int MODE_ASIC ; 
 int MODE_BB ; 
 int MODE_E5 ; 
 int MODE_EMUL_FULL ; 
 int MODE_EMUL_REDUCED ; 
 int MODE_FPGA ; 
 int MODE_K2 ; 
 int MODE_MF_SD ; 
 int MODE_MF_SI ; 
 int MODE_PORTS_PER_ENG_1 ; 
 int MODE_PORTS_PER_ENG_2 ; 
 int MODE_PORTS_PER_ENG_4 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum _ecore_status_t FUNC9(struct ecore_hwfn *p_hwfn)
{
	int hw_mode = 0;

	if (FUNC5(p_hwfn->p_dev)) {
		hw_mode |= 1 << MODE_BB;
	} else if (FUNC4(p_hwfn->p_dev)) {
		hw_mode |= 1 << MODE_K2;
	} else if (FUNC7(p_hwfn->p_dev)) {
		hw_mode |= 1 << MODE_E5;
	} else {
		FUNC2(p_hwfn, true, "Unknown chip type %#x\n",
			  p_hwfn->p_dev->type);
		return ECORE_INVAL;
	}

	/* Ports per engine is based on the values in CNIG_REG_NW_PORT_MODE*/
	switch (p_hwfn->p_dev->num_ports_in_engine) {
	case 1:
		hw_mode |= 1 << MODE_PORTS_PER_ENG_1;
		break;
	case 2:
		hw_mode |= 1 << MODE_PORTS_PER_ENG_2;
		break;
	case 4:
		hw_mode |= 1 << MODE_PORTS_PER_ENG_4;
		break;
	default:
		FUNC2(p_hwfn, true, "num_ports_in_engine = %d not supported\n",
			  p_hwfn->p_dev->num_ports_in_engine);
		return ECORE_INVAL;
	}

	if (FUNC8(ECORE_MF_OVLAN_CLSS,
			  &p_hwfn->p_dev->mf_bits))
		hw_mode |= 1 << MODE_MF_SD;
	else
		hw_mode |= 1 << MODE_MF_SI;

#ifndef ASIC_ONLY
	if (FUNC1(p_hwfn->p_dev)) {
		if (FUNC0(p_hwfn->p_dev)) {
			hw_mode |= 1 << MODE_FPGA;
		} else {
			if (p_hwfn->p_dev->b_is_emul_full)
				hw_mode |= 1 << MODE_EMUL_FULL;
			else
				hw_mode |= 1 << MODE_EMUL_REDUCED;
		}
	} else
#endif
	hw_mode |= 1 << MODE_ASIC;

	if (FUNC6(p_hwfn->p_dev))
		hw_mode |= 1 << MODE_100G;

	p_hwfn->hw_info.hw_mode = hw_mode;

	FUNC3(p_hwfn, (ECORE_MSG_PROBE | ECORE_MSG_IFUP),
		   "Configuring function for hw_mode: 0x%08x\n",
		   p_hwfn->hw_info.hw_mode);

	return ECORE_SUCCESS;
}