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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct hwrm_nvm_install_update_output {int /*<<< orphan*/  reset_required; int /*<<< orphan*/  problem_item; int /*<<< orphan*/  result; int /*<<< orphan*/  installed_items; } ;
struct hwrm_nvm_install_update_input {int /*<<< orphan*/  install_type; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  BNXT_NVM_TIMEO ; 
 int /*<<< orphan*/  HWRM_NVM_INSTALL_UPDATE ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_install_update_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_install_update_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct bnxt_softc *softc,
    uint32_t install_type, uint64_t *installed_items, uint8_t *result,
    uint8_t *problem_item, uint8_t *reset_required)
{
	struct hwrm_nvm_install_update_input req = {0};
	struct hwrm_nvm_install_update_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int rc;
	uint32_t old_timeo;

	FUNC3(softc, &req, HWRM_NVM_INSTALL_UPDATE);
	req.install_type = FUNC4(install_type);

	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	if (rc)
		goto exit;

	if (installed_items)
		*installed_items = FUNC5(resp->installed_items);
	if (result)
		*result = resp->result;
	if (problem_item)
		*problem_item = resp->problem_item;
	if (reset_required)
		*reset_required = resp->reset_required;

exit:
	FUNC1(softc);
	return rc;
}