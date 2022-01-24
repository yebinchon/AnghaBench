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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iflib_dma_info {int /*<<< orphan*/  idi_paddr; int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; int /*<<< orphan*/  idi_vaddr; } ;
struct hwrm_nvm_modify_input {void* len; void* offset; int /*<<< orphan*/  dir_idx; int /*<<< orphan*/  host_src_addr; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_timeo; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  BNXT_NVM_TIMEO ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HWRM_NVM_MODIFY ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_modify_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_modify_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iflib_dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iflib_dma_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

int
FUNC12(struct bnxt_softc *softc, uint16_t index, uint32_t offset,
    void *data, bool cpyin, uint32_t length)
{
	struct hwrm_nvm_modify_input req = {0};
	struct iflib_dma_info dma_data;
	int rc;
	uint32_t old_timeo;

	if (length == 0 || !data)
		return EINVAL;
	rc = FUNC9(softc->ctx, length, &dma_data,
	    BUS_DMA_NOWAIT);
	if (rc)
		return ENOMEM;
	if (cpyin) {
		rc = FUNC5(data, dma_data.idi_vaddr, length);
		if (rc)
			goto exit;
	}
	else
		FUNC11(dma_data.idi_vaddr, data, length);
	FUNC4(dma_data.idi_tag, dma_data.idi_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	FUNC3(softc, &req, HWRM_NVM_MODIFY);
	req.host_src_addr = FUNC8(dma_data.idi_paddr);
	req.dir_idx = FUNC6(index);
	req.offset = FUNC7(offset);
	req.len = FUNC7(length);
	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	FUNC1(softc);

exit:
	FUNC10(&dma_data);
	return rc;
}