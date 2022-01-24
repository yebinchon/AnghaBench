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
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_AGAIN ; 
 scalar_t__ FUNC2 (struct ecore_dev*) ; 
 struct ecore_hwfn* FUNC3 (struct ecore_dev*) ; 
 int ECORE_SUCCESS ; 
 int ECORE_UNKNOWN_ERROR ; 
 int NIG_REG_ACPI_PAT_0_CRC_BB ; 
 int NIG_REG_ACPI_PAT_0_LEN_BB ; 
 int NIG_REG_ACPI_PAT_1_CRC_BB ; 
 int NIG_REG_ACPI_PAT_1_LEN_BB ; 
 int NIG_REG_ACPI_PAT_2_CRC_BB ; 
 int NIG_REG_ACPI_PAT_2_LEN_BB ; 
 int NIG_REG_ACPI_PAT_3_CRC_BB ; 
 int NIG_REG_ACPI_PAT_3_LEN_BB ; 
 int NIG_REG_ACPI_PAT_4_CRC_BB ; 
 int NIG_REG_ACPI_PAT_4_LEN_BB ; 
 int NIG_REG_ACPI_PAT_5_CRC_BB ; 
 int NIG_REG_ACPI_PAT_5_LEN_BB ; 
 int NIG_REG_ACPI_PAT_6_CRC_BB ; 
 int NIG_REG_ACPI_PAT_6_LEN_BB ; 
 int NIG_REG_ACPI_PAT_7_CRC_BB ; 
 int NIG_REG_ACPI_PAT_7_LEN_BB ; 
 int WOL_REG_ACPI_PAT_0_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_0_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_1_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_1_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_2_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_2_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_3_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_3_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_4_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_4_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_5_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_5_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_6_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_6_LEN_K2_E5 ; 
 int WOL_REG_ACPI_PAT_7_CRC_K2_E5 ; 
 int WOL_REG_ACPI_PAT_7_LEN_K2_E5 ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int,int) ; 
 struct ecore_ptt* FUNC6 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC8(struct ecore_dev *p_dev, u32 reg_idx,
					u32 pattern_size, u32 crc)
{
	struct ecore_hwfn *p_hwfn = FUNC3(p_dev);
	enum _ecore_status_t rc = ECORE_SUCCESS;
	struct ecore_ptt *p_ptt;
	u32 reg_len = 0;
	u32 reg_crc = 0;

	p_ptt = FUNC6(p_hwfn);
	if (!p_ptt)
		return ECORE_AGAIN;

	/* Get length and CRC register offsets */
	switch (reg_idx)
	{
	case 0:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_0_LEN_BB :
				WOL_REG_ACPI_PAT_0_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_0_CRC_BB :
				WOL_REG_ACPI_PAT_0_CRC_K2_E5;
		break;
	case 1:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_1_LEN_BB :
				WOL_REG_ACPI_PAT_1_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_1_CRC_BB :
				WOL_REG_ACPI_PAT_1_CRC_K2_E5;
		break;
	case 2:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_2_LEN_BB :
				WOL_REG_ACPI_PAT_2_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_2_CRC_BB :
				WOL_REG_ACPI_PAT_2_CRC_K2_E5;
		break;
	case 3:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_3_LEN_BB :
				WOL_REG_ACPI_PAT_3_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_3_CRC_BB :
				WOL_REG_ACPI_PAT_3_CRC_K2_E5;
		break;
	case 4:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_4_LEN_BB :
				WOL_REG_ACPI_PAT_4_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_4_CRC_BB :
				WOL_REG_ACPI_PAT_4_CRC_K2_E5;
		break;
	case 5:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_5_LEN_BB :
				WOL_REG_ACPI_PAT_5_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_5_CRC_BB :
				WOL_REG_ACPI_PAT_5_CRC_K2_E5;
		break;
	case 6:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_6_LEN_BB :
				WOL_REG_ACPI_PAT_6_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_6_CRC_BB :
				WOL_REG_ACPI_PAT_6_CRC_K2_E5;
		break;
	case 7:
		reg_len = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_7_LEN_BB :
				WOL_REG_ACPI_PAT_7_LEN_K2_E5;
		reg_crc = FUNC2(p_dev) ? NIG_REG_ACPI_PAT_7_CRC_BB :
				WOL_REG_ACPI_PAT_7_CRC_K2_E5;
		break;
	default:
		rc = ECORE_UNKNOWN_ERROR;
		goto out;
	}

	/* Allign pattern size to 4 */
	while (pattern_size % 4)
		pattern_size++;

	/* Write pattern length and crc value */
	if (FUNC2(p_dev)) {
		rc = FUNC4(p_hwfn, p_ptt, reg_len, pattern_size);
		if (rc != ECORE_SUCCESS) {
			FUNC1(p_hwfn, false,
				  "Failed to update the ACPI pattern length\n");
			return rc;
		}

		rc = FUNC4(p_hwfn, p_ptt, reg_crc, crc);
		if (rc != ECORE_SUCCESS) {
			FUNC1(p_hwfn, false,
				  "Failed to update the ACPI pattern crc value\n");
			return rc;
		}
	} else {
		FUNC5(p_hwfn, p_ptt, reg_len, pattern_size);
		FUNC5(p_hwfn, p_ptt, reg_crc, crc);
	}

	FUNC0(p_dev,
		"ecore_set_nwuf_reg: idx[%d] reg_crc[0x%x=0x%08x] "
		"reg_len[0x%x=0x%x]\n",
		reg_idx, reg_crc, crc, reg_len, pattern_size);
out:
	 FUNC7(p_hwfn, p_ptt);

	return rc;
}