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
struct ecore_wake_info {int wk_pkt_len; scalar_t__ wk_buffer; void* wk_details; void* wk_info; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,char*,int,...) ; 
 scalar_t__ FUNC1 (struct ecore_dev*) ; 
 int ECORE_SUCCESS ; 
 int NIG_REG_WAKE_BUFFER_BB ; 
 int const NIG_REG_WAKE_DETAILS_BB ; 
 int const NIG_REG_WAKE_INFO_BB ; 
 int const NIG_REG_WAKE_PKT_LEN_BB ; 
 int* OSAL_NULL ; 
 int WOL_REG_WAKE_BUFFER_K2_E5 ; 
 int const WOL_REG_WAKE_DETAILS_K2_E5 ; 
 int const WOL_REG_WAKE_INFO_K2_E5 ; 
 int const WOL_REG_WAKE_PKT_LEN_K2_E5 ; 
 void* FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn,
					 struct ecore_ptt *p_ptt,
					 struct ecore_wake_info *wake_info)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u32 *buf = OSAL_NULL;
	u32 i    = 0;
	const u32 reg_wake_buffer_offest =
		FUNC1(p_dev) ? NIG_REG_WAKE_BUFFER_BB :
			WOL_REG_WAKE_BUFFER_K2_E5;

	wake_info->wk_info    = FUNC2(p_hwfn, p_ptt,
				FUNC1(p_dev) ? NIG_REG_WAKE_INFO_BB :
				WOL_REG_WAKE_INFO_K2_E5);
	wake_info->wk_details = FUNC2(p_hwfn, p_ptt,
				FUNC1(p_dev) ? NIG_REG_WAKE_DETAILS_BB :
				WOL_REG_WAKE_DETAILS_K2_E5);
	wake_info->wk_pkt_len = FUNC2(p_hwfn, p_ptt,
				FUNC1(p_dev) ? NIG_REG_WAKE_PKT_LEN_BB :
				WOL_REG_WAKE_PKT_LEN_K2_E5);

	FUNC0(p_dev,
		"ecore_get_wake_info: REG_WAKE_INFO=0x%08x "
		"REG_WAKE_DETAILS=0x%08x "
		"REG_WAKE_PKT_LEN=0x%08x\n",
		wake_info->wk_info,
		wake_info->wk_details,
		wake_info->wk_pkt_len);

	buf = (u32 *)wake_info->wk_buffer;

	for (i = 0; i < (wake_info->wk_pkt_len / sizeof(u32)); i++)
	{
		if ((i*sizeof(u32)) >=  sizeof(wake_info->wk_buffer))
		{
			FUNC0(p_dev,
				"ecore_get_wake_info: i index to 0 high=%d\n",
				 i);
			break;
		}
		buf[i] = FUNC2(p_hwfn, p_ptt,
				  reg_wake_buffer_offest + (i * sizeof(u32)));
		FUNC0(p_dev, "ecore_get_wake_info: wk_buffer[%u]: 0x%08x\n",
			i, buf[i]);
	}

	FUNC3(p_hwfn, p_ptt);

	return ECORE_SUCCESS;
}