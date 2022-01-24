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
typedef  int /*<<< orphan*/  uint16_t ;
struct hwrm_vnic_alloc_output {int /*<<< orphan*/  vnic_id; } ;
struct hwrm_vnic_alloc_input {int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
struct bnxt_vnic_info {int flags; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  dev; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int BNXT_VNIC_FLAG_DEFAULT ; 
 int EDOOFUS ; 
 scalar_t__ HWRM_NA_SIGNATURE ; 
 int /*<<< orphan*/  HWRM_VNIC_ALLOC ; 
 int /*<<< orphan*/  HWRM_VNIC_ALLOC_INPUT_FLAGS_DEFAULT ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_vnic_alloc_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_vnic_alloc_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct bnxt_softc *softc, struct bnxt_vnic_info *vnic)
{
	struct hwrm_vnic_alloc_input req = {0};
	struct hwrm_vnic_alloc_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int rc;

	if (vnic->id != (uint16_t)HWRM_NA_SIGNATURE) {
		FUNC4(softc->dev,
		    "Attempt to re-allocate vnic %04x\n", vnic->id);
		return EDOOFUS;
	}

	FUNC3(softc, &req, HWRM_VNIC_ALLOC);

	if (vnic->flags & BNXT_VNIC_FLAG_DEFAULT)
		req.flags = FUNC5(HWRM_VNIC_ALLOC_INPUT_FLAGS_DEFAULT);

	FUNC0(softc);
	rc = FUNC2(softc, &req, sizeof(req));
	if (rc)
		goto fail;

	vnic->id = FUNC6(resp->vnic_id);

fail:
	FUNC1(softc);
	return (rc);
}