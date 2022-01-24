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
typedef  int /*<<< orphan*/  uint16_t ;
struct hwrm_nvm_get_dev_info_output {int /*<<< orphan*/  available_size; int /*<<< orphan*/  reserved_size; int /*<<< orphan*/  nvram_size; int /*<<< orphan*/  sector_size; int /*<<< orphan*/  device_id; int /*<<< orphan*/  manufacturer_id; } ;
struct hwrm_nvm_get_dev_info_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  BNXT_NVM_TIMEO ; 
 int /*<<< orphan*/  HWRM_NVM_GET_DEV_INFO ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_get_dev_info_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_get_dev_info_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct bnxt_softc *softc, uint16_t *mfg_id,
    uint16_t *device_id, uint32_t *sector_size, uint32_t *nvram_size,
    uint32_t *reserved_size, uint32_t *available_size)
{
	struct hwrm_nvm_get_dev_info_input req = {0};
	struct hwrm_nvm_get_dev_info_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	int rc;
	uint32_t old_timeo;

	FUNC3(softc, &req, HWRM_NVM_GET_DEV_INFO);

	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	if (rc)
		goto exit;

	if (mfg_id)
		*mfg_id = FUNC4(resp->manufacturer_id);
	if (device_id)
		*device_id = FUNC4(resp->device_id);
	if (sector_size)
		*sector_size = FUNC5(resp->sector_size);
	if (nvram_size)
		*nvram_size = FUNC5(resp->nvram_size);
	if (reserved_size)
		*reserved_size = FUNC5(resp->reserved_size);
	if (available_size)
		*available_size = FUNC5(resp->available_size);

exit:
	FUNC1(softc);
	return rc;
}