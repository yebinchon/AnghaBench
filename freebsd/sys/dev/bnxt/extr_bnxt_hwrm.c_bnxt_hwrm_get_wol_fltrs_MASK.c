#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct hwrm_wol_filter_qcfg_output {scalar_t__ wol_type; int /*<<< orphan*/  wol_filter_id; int /*<<< orphan*/  next_handle; } ;
struct hwrm_wol_filter_qcfg_input {void* handle; void* port_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {scalar_t__ port_id; } ;
struct TYPE_3__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int wol; int /*<<< orphan*/  wol_filter_id; TYPE_2__ pf; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 scalar_t__ HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT ; 
 int /*<<< orphan*/  HWRM_WOL_FILTER_QCFG ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_wol_filter_qcfg_input*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_wol_filter_qcfg_input*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

uint16_t
FUNC4(struct bnxt_softc *softc, uint16_t handle)
{
	struct hwrm_wol_filter_qcfg_input req = {0};
	struct hwrm_wol_filter_qcfg_output *resp =
			(void *)softc->hwrm_cmd_resp.idi_vaddr;
	uint16_t next_handle = 0;
	int rc;

	FUNC0(softc, &req, HWRM_WOL_FILTER_QCFG);
	req.port_id = FUNC1(softc->pf.port_id);
	req.handle = FUNC1(handle);
	rc = FUNC2(softc, &req, sizeof(req));
	if (!rc) {
		next_handle = FUNC3(resp->next_handle);
		if (next_handle != 0) {
			if (resp->wol_type ==
				HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT) {
				softc->wol = 1;
				softc->wol_filter_id = resp->wol_filter_id;
			}
		}
	}
	return next_handle;
}