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
struct iflib_dma_info {scalar_t__ idi_paddr; int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; int /*<<< orphan*/  idi_vaddr; } ;
struct hwrm_nvm_write_output {int /*<<< orphan*/  dir_idx; int /*<<< orphan*/  dir_item_length; } ;
struct hwrm_nvm_write_input {void* dir_item_length; void* flags; void* option; void* dir_data_length; void* dir_attr; void* dir_ext; void* dir_ordinal; void* dir_type; int /*<<< orphan*/  host_src_addr; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_timeo; int /*<<< orphan*/  ctx; TYPE_1__ hwrm_cmd_resp; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  BNXT_NVM_TIMEO ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HWRM_NVM_WRITE ; 
 int /*<<< orphan*/  HWRM_NVM_WRITE_INPUT_FLAGS_KEEP_ORIG_ACTIVE_IMG ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_write_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_write_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iflib_dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iflib_dma_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

int
FUNC14(struct bnxt_softc *softc, void *data, bool cpyin,
    uint16_t type, uint16_t ordinal, uint16_t ext, uint16_t attr,
    uint16_t option, uint32_t data_length, bool keep, uint32_t *item_length,
    uint16_t *index)
{
	struct hwrm_nvm_write_input req = {0};
	struct hwrm_nvm_write_output *resp =
	    (void *)softc->hwrm_cmd_resp.idi_vaddr;
	struct iflib_dma_info dma_data;
	int rc;
	uint32_t old_timeo;

	if (data_length) {
		rc = FUNC9(softc->ctx, data_length, &dma_data,
		    BUS_DMA_NOWAIT);
		if (rc)
			return ENOMEM;
		if (cpyin) {
			rc = FUNC5(data, dma_data.idi_vaddr, data_length);
			if (rc)
				goto early_exit;
		}
		else
			FUNC13(dma_data.idi_vaddr, data, data_length);
		FUNC4(dma_data.idi_tag, dma_data.idi_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}
	else
		dma_data.idi_paddr = 0;

	FUNC3(softc, &req, HWRM_NVM_WRITE);

	req.host_src_addr = FUNC8(dma_data.idi_paddr);
	req.dir_type = FUNC6(type);
	req.dir_ordinal = FUNC6(ordinal);
	req.dir_ext = FUNC6(ext);
	req.dir_attr = FUNC6(attr);
	req.dir_data_length = FUNC7(data_length);
	req.option = FUNC6(option);
	if (keep) {
		req.flags =
		    FUNC6(HWRM_NVM_WRITE_INPUT_FLAGS_KEEP_ORIG_ACTIVE_IMG);
	}
	if (item_length)
		req.dir_item_length = FUNC7(*item_length);

	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	if (rc)
		goto exit;
	if (item_length)
		*item_length = FUNC12(resp->dir_item_length);
	if (index)
		*index = FUNC11(resp->dir_idx);

exit:
	FUNC1(softc);
early_exit:
	if (data_length)
		FUNC10(&dma_data);
	return rc;
}