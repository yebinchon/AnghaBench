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
typedef  int /*<<< orphan*/  uint32_t ;
struct hwrm_nvm_get_dir_info_output {int /*<<< orphan*/  entry_length; int /*<<< orphan*/  entries; } ;
struct hwrm_nvm_get_dir_info_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  BNXT_NVM_TIMEO ; 
 int /*<<< orphan*/  HWRM_NVM_GET_DIR_INFO ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_get_dir_info_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_get_dir_info_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct bnxt_softc *softc, uint32_t *entries,
    uint32_t *entry_length)
{
	struct hwrm_nvm_get_dir_info_input req = {0};
	struct hwrm_nvm_get_dir_info_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int rc;
	uint32_t old_timeo;

	FUNC3(softc, &req, HWRM_NVM_GET_DIR_INFO);

	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	if (rc)
		goto exit;

	if (entries)
		*entries = FUNC4(resp->entries);
	if (entry_length)
		*entry_length = FUNC4(resp->entry_length);

exit:
	FUNC1(softc);
	return rc;
}