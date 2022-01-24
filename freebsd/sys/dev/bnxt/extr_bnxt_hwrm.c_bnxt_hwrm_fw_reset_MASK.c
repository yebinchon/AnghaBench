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
typedef  void* uint8_t ;
struct hwrm_fw_reset_output {void* selfrst_status; } ;
struct hwrm_fw_reset_input {void* selfrst_status; void* embedded_proc_type; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  HWRM_FW_RESET ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int FUNC3 (struct bnxt_softc*,struct hwrm_fw_reset_input*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_softc*,struct hwrm_fw_reset_input*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct bnxt_softc *softc, uint8_t processor,
    uint8_t *selfreset)
{
	struct hwrm_fw_reset_input req = {0};
	struct hwrm_fw_reset_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int rc;

	FUNC2(selfreset);

	FUNC4(softc, &req, HWRM_FW_RESET);
	req.embedded_proc_type = processor;
	req.selfrst_status = *selfreset;

	FUNC0(softc);
	rc = FUNC3(softc, &req, sizeof(req));
	if (rc)
		goto exit;
	*selfreset = resp->selfrst_status;

exit:
	FUNC1(softc);
	return rc;
}