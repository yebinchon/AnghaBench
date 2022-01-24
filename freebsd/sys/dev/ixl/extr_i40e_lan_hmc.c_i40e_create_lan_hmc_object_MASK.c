#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  pa; } ;
struct TYPE_19__ {TYPE_4__ addr; } ;
struct TYPE_16__ {int /*<<< orphan*/  pa; } ;
struct TYPE_17__ {TYPE_2__ pd_page_addr; } ;
struct TYPE_20__ {TYPE_5__ bp; TYPE_3__ pd_table; } ;
struct i40e_hmc_sd_entry {int entry_type; TYPE_6__ u; void* valid; } ;
struct i40e_hmc_lan_create_obj_info {scalar_t__ start_idx; size_t rsrc_type; scalar_t__ count; scalar_t__ direct_mode_sz; TYPE_8__* hmc_info; int /*<<< orphan*/  entry_type; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
struct TYPE_21__ {scalar_t__ sd_cnt; struct i40e_hmc_sd_entry* sd_entry; } ;
struct TYPE_22__ {scalar_t__ signature; TYPE_7__ sd_table; TYPE_1__* hmc_obj; } ;
struct TYPE_15__ {scalar_t__ cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FALSE ; 
 int I40E_ERR_BAD_PTR ; 
 int I40E_ERR_INVALID_HMC_OBJ_COUNT ; 
 int I40E_ERR_INVALID_HMC_OBJ_INDEX ; 
 int I40E_ERR_INVALID_SD_INDEX ; 
 int I40E_ERR_INVALID_SD_TYPE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ I40E_HMC_DIRECT_BP_SIZE ; 
 scalar_t__ I40E_HMC_INFO_SIGNATURE ; 
 scalar_t__ I40E_HMC_MAX_BP_COUNT ; 
#define  I40E_SD_TYPE_DIRECT 129 
#define  I40E_SD_TYPE_PAGED 128 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int I40E_SUCCESS ; 
 void* TRUE ; 
 int FUNC5 (struct i40e_hw*,TYPE_8__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i40e_hw*,TYPE_8__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,TYPE_8__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,TYPE_8__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_hw*,TYPE_8__*,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

enum i40e_status_code FUNC12(struct i40e_hw *hw,
				struct i40e_hmc_lan_create_obj_info *info)
{
	enum i40e_status_code ret_code = I40E_SUCCESS;
	struct i40e_hmc_sd_entry *sd_entry;
	u32 pd_idx1 = 0, pd_lmt1 = 0;
	u32 pd_idx = 0, pd_lmt = 0;
	bool pd_error = FALSE;
	u32 sd_idx, sd_lmt;
	u64 sd_size;
	u32 i, j;

	if (NULL == info) {
		ret_code = I40E_ERR_BAD_PTR;
		FUNC0("i40e_create_lan_hmc_object: bad info ptr\n");
		goto exit;
	}
	if (NULL == info->hmc_info) {
		ret_code = I40E_ERR_BAD_PTR;
		FUNC0("i40e_create_lan_hmc_object: bad hmc_info ptr\n");
		goto exit;
	}
	if (I40E_HMC_INFO_SIGNATURE != info->hmc_info->signature) {
		ret_code = I40E_ERR_BAD_PTR;
		FUNC0("i40e_create_lan_hmc_object: bad signature\n");
		goto exit;
	}

	if (info->start_idx >= info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
		ret_code = I40E_ERR_INVALID_HMC_OBJ_INDEX;
		FUNC1("i40e_create_lan_hmc_object: returns error %d\n",
			  ret_code);
		goto exit;
	}
	if ((info->start_idx + info->count) >
	    info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
		ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
		FUNC1("i40e_create_lan_hmc_object: returns error %d\n",
			  ret_code);
		goto exit;
	}

	/* find sd index and limit */
	FUNC3(info->hmc_info, info->rsrc_type,
				 info->start_idx, info->count,
				 &sd_idx, &sd_lmt);
	if (sd_idx >= info->hmc_info->sd_table.sd_cnt ||
	    sd_lmt > info->hmc_info->sd_table.sd_cnt) {
			ret_code = I40E_ERR_INVALID_SD_INDEX;
			goto exit;
	}
	/* find pd index */
	FUNC2(info->hmc_info, info->rsrc_type,
				 info->start_idx, info->count, &pd_idx,
				 &pd_lmt);

	/* This is to cover for cases where you may not want to have an SD with
	 * the full 2M memory but something smaller. By not filling out any
	 * size, the function will default the SD size to be 2M.
	 */
	if (info->direct_mode_sz == 0)
		sd_size = I40E_HMC_DIRECT_BP_SIZE;
	else
		sd_size = info->direct_mode_sz;

	/* check if all the sds are valid. If not, allocate a page and
	 * initialize it.
	 */
	for (j = sd_idx; j < sd_lmt; j++) {
		/* update the sd table entry */
		ret_code = FUNC6(hw, info->hmc_info, j,
						   info->entry_type,
						   sd_size);
		if (I40E_SUCCESS != ret_code)
			goto exit_sd_error;
		sd_entry = &info->hmc_info->sd_table.sd_entry[j];
		if (I40E_SD_TYPE_PAGED == sd_entry->entry_type) {
			/* check if all the pds in this sd are valid. If not,
			 * allocate a page and initialize it.
			 */

			/* find pd_idx and pd_lmt in this sd */
			pd_idx1 = FUNC10(pd_idx, (j * I40E_HMC_MAX_BP_COUNT));
			pd_lmt1 = FUNC11(pd_lmt,
				      ((j + 1) * I40E_HMC_MAX_BP_COUNT));
			for (i = pd_idx1; i < pd_lmt1; i++) {
				/* update the pd table entry */
				ret_code = FUNC5(hw,
								info->hmc_info,
								i, NULL);
				if (I40E_SUCCESS != ret_code) {
					pd_error = TRUE;
					break;
				}
			}
			if (pd_error) {
				/* remove the backing pages from pd_idx1 to i */
				while (i && (i > pd_idx1)) {
					FUNC7(hw, info->hmc_info,
							  (i - 1));
					i--;
				}
			}
		}
		if (!sd_entry->valid) {
			sd_entry->valid = TRUE;
			switch (sd_entry->entry_type) {
			case I40E_SD_TYPE_PAGED:
				FUNC4(hw,
					sd_entry->u.pd_table.pd_page_addr.pa,
					j, sd_entry->entry_type);
				break;
			case I40E_SD_TYPE_DIRECT:
				FUNC4(hw, sd_entry->u.bp.addr.pa,
						     j, sd_entry->entry_type);
				break;
			default:
				ret_code = I40E_ERR_INVALID_SD_TYPE;
				goto exit;
			}
		}
	}
	goto exit;

exit_sd_error:
	/* cleanup for sd entries from j to sd_idx */
	while (j && (j > sd_idx)) {
		sd_entry = &info->hmc_info->sd_table.sd_entry[j - 1];
		switch (sd_entry->entry_type) {
		case I40E_SD_TYPE_PAGED:
			pd_idx1 = FUNC10(pd_idx,
				      ((j - 1) * I40E_HMC_MAX_BP_COUNT));
			pd_lmt1 = FUNC11(pd_lmt, (j * I40E_HMC_MAX_BP_COUNT));
			for (i = pd_idx1; i < pd_lmt1; i++)
				FUNC7(hw, info->hmc_info, i);
			FUNC8(hw, info->hmc_info, (j - 1));
			break;
		case I40E_SD_TYPE_DIRECT:
			FUNC9(hw, info->hmc_info, (j - 1));
			break;
		default:
			ret_code = I40E_ERR_INVALID_SD_TYPE;
			break;
		}
		j--;
	}
exit:
	return ret_code;
}