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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iflib_dma_info {scalar_t__ idi_size; int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; int /*<<< orphan*/  idi_paddr; } ;
struct hwrm_nvm_read_input {void* len; void* offset; int /*<<< orphan*/  dir_idx; int /*<<< orphan*/  host_dest_addr; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {scalar_t__ hwrm_cmd_timeo; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 scalar_t__ BNXT_NVM_TIMEO ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int EINVAL ; 
 int /*<<< orphan*/  HWRM_NVM_READ ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_read_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_read_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct bnxt_softc *softc, uint16_t index, uint32_t offset,
    uint32_t length, struct iflib_dma_info *data)
{
	struct hwrm_nvm_read_input req = {0};
	int rc;
	uint32_t old_timeo;

	if (length > data->idi_size) {
		rc = EINVAL;
		goto exit;
	}
	FUNC3(softc, &req, HWRM_NVM_READ);
	req.host_dest_addr = FUNC7(data->idi_paddr);
	req.dir_idx = FUNC5(index);
	req.offset = FUNC6(offset);
	req.len = FUNC6(length);
	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	FUNC1(softc);
	if (rc)
		goto exit;
	FUNC4(data->idi_tag, data->idi_map, BUS_DMASYNC_POSTREAD);

	goto exit;

exit:
	return rc;
}