#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct hwrm_nvm_find_dir_entry_output {int /*<<< orphan*/  dir_idx; int /*<<< orphan*/  dir_ordinal; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dir_data_length; int /*<<< orphan*/  dir_item_length; } ;
struct hwrm_nvm_find_dir_entry_input {int /*<<< orphan*/  opt_ordinal; void* dir_ext; void* dir_ordinal; void* dir_type; void* dir_idx; int /*<<< orphan*/  enables; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  BNXT_NVM_TIMEO ; 
 int /*<<< orphan*/  HWRM_NVM_FIND_DIR_ENTRY ; 
 int /*<<< orphan*/  HWRM_NVM_FIND_DIR_ENTRY_INPUT_ENABLES_DIR_IDX_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bnxt_softc*,struct hwrm_nvm_find_dir_entry_input*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_softc*,struct hwrm_nvm_find_dir_entry_input*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct bnxt_softc *softc, uint16_t type,
    uint16_t *ordinal, uint16_t ext, uint16_t *index, bool use_index,
    uint8_t search_opt, uint32_t *data_length, uint32_t *item_length,
    uint32_t *fw_ver)
{
	struct hwrm_nvm_find_dir_entry_input req = {0};
	struct hwrm_nvm_find_dir_entry_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int	rc = 0;
	uint32_t old_timeo;

	FUNC2(ordinal);

	FUNC4(softc, &req, HWRM_NVM_FIND_DIR_ENTRY);
	if (use_index) {
		req.enables = FUNC6(
		    HWRM_NVM_FIND_DIR_ENTRY_INPUT_ENABLES_DIR_IDX_VALID);
		req.dir_idx = FUNC5(*index);
	}
	req.dir_type = FUNC5(type);
	req.dir_ordinal = FUNC5(*ordinal);
	req.dir_ext = FUNC5(ext);
	req.opt_ordinal = search_opt;

	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC3(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	if (rc)
		goto exit;

	if (item_length)
		*item_length = FUNC8(resp->dir_item_length);
	if (data_length)
		*data_length = FUNC8(resp->dir_data_length);
	if (fw_ver)
		*fw_ver = FUNC8(resp->fw_ver);
	*ordinal = FUNC7(resp->dir_ordinal);
	if (index)
		*index = FUNC7(resp->dir_idx);

exit:
	FUNC1(softc);
	return (rc);
}