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
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {int initialized; int* mode_enable; scalar_t__ num_regs_read; int /*<<< orphan*/  use_dmae; void* platform_id; int /*<<< orphan*/  chip_id; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; struct dbg_tools_data dbg_info; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_BB ; 
 int /*<<< orphan*/  CHIP_E5 ; 
 int /*<<< orphan*/  CHIP_K2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int DBG_STATUS_APP_VERSION_NOT_SET ; 
 int DBG_STATUS_OK ; 
 int DBG_STATUS_UNKNOWN_CHIP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISCS_REG_ECO_RESERVED ; 
 size_t MODE_ASIC ; 
 size_t MODE_BB ; 
 size_t MODE_E5 ; 
 size_t MODE_EMUL_FULL ; 
 size_t MODE_EMUL_REDUCED ; 
 size_t MODE_FPGA ; 
 size_t MODE_K2 ; 
 void* PLATFORM_ASIC ; 
 void* PLATFORM_EMUL_FULL ; 
 void* PLATFORM_EMUL_REDUCED ; 
 void* PLATFORM_FPGA ; 
 int /*<<< orphan*/  USE_DMAE ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_app_ver ; 

__attribute__((used)) static enum dbg_status FUNC8(struct ecore_hwfn *p_hwfn,
										  struct ecore_ptt *p_ptt)
{
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

	if (dev_data->initialized)
		return DBG_STATUS_OK;

	if (!s_app_ver)
		return DBG_STATUS_APP_VERSION_NOT_SET;

	if (FUNC4(p_hwfn->p_dev)) {
		dev_data->chip_id = CHIP_E5;
		dev_data->mode_enable[MODE_E5] = 1;
	}
	else if (FUNC5(p_hwfn->p_dev)) {
		dev_data->chip_id = CHIP_K2;
		dev_data->mode_enable[MODE_K2] = 1;
	}
	else if (FUNC3(p_hwfn->p_dev)) {
		dev_data->chip_id = CHIP_BB;
		dev_data->mode_enable[MODE_BB] = 1;
	}
	else {
		return DBG_STATUS_UNKNOWN_CHIP;
	}

#ifdef ASIC_ONLY
	dev_data->platform_id = PLATFORM_ASIC;
	dev_data->mode_enable[MODE_ASIC] = 1;
#else
	if (FUNC0(p_hwfn->p_dev)) {
		dev_data->platform_id = PLATFORM_ASIC;
		dev_data->mode_enable[MODE_ASIC] = 1;
	}
	else if (FUNC1(p_hwfn->p_dev)) {
		if (FUNC7(p_hwfn, p_ptt, MISCS_REG_ECO_RESERVED) & 0x20000000) {
			dev_data->platform_id = PLATFORM_EMUL_FULL;
			dev_data->mode_enable[MODE_EMUL_FULL] = 1;
		}
		else {
			dev_data->platform_id = PLATFORM_EMUL_REDUCED;
			dev_data->mode_enable[MODE_EMUL_REDUCED] = 1;
		}
	}
	else if (FUNC2(p_hwfn->p_dev)) {
		dev_data->platform_id = PLATFORM_FPGA;
		dev_data->mode_enable[MODE_FPGA] = 1;
	}
	else {
		return DBG_STATUS_UNKNOWN_CHIP;
	}
#endif

	/* Initializes the GRC parameters */
	FUNC6(p_hwfn);

	dev_data->use_dmae = USE_DMAE;
	dev_data->num_regs_read = 0;
	dev_data->initialized = 1;

	return DBG_STATUS_OK;
}