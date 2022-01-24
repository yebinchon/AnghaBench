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
typedef  int uint32_t ;
struct iflib_dma_info {int idi_size; int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; int /*<<< orphan*/  idi_paddr; } ;
struct hwrm_nvm_get_dir_entries_input {int /*<<< orphan*/  host_dest_addr; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int hwrm_cmd_timeo; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int BNXT_NVM_TIMEO ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int EINVAL ; 
 int /*<<< orphan*/  HWRM_NVM_GET_DIR_ENTRIES ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_nvm_get_dir_entries_input*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_softc*,struct hwrm_nvm_get_dir_entries_input*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnxt_softc*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct bnxt_softc *softc, uint32_t *entries,
    uint32_t *entry_length, struct iflib_dma_info *dma_data)
{
	struct hwrm_nvm_get_dir_entries_input req = {0};
	uint32_t ent;
	uint32_t ent_len;
	int rc;
	uint32_t old_timeo;

	if (!entries)
		entries = &ent;
	if (!entry_length)
		entry_length = &ent_len;

	rc = FUNC4(softc, entries, entry_length);
	if (rc)
		goto exit;
	if (*entries * *entry_length > dma_data->idi_size) {
		rc = EINVAL;
		goto exit;
	}

	/*
	 * TODO: There's a race condition here that could blow up DMA memory...
	 *	 we need to allocate the max size, not the currently in use
	 *	 size.  The command should totally have a max size here.
	 */
	FUNC3(softc, &req, HWRM_NVM_GET_DIR_ENTRIES);
	req.host_dest_addr = FUNC6(dma_data->idi_paddr);
	FUNC0(softc);
	old_timeo = softc->hwrm_cmd_timeo;
	softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
	rc = FUNC2(softc, &req, sizeof(req));
	softc->hwrm_cmd_timeo = old_timeo;
	FUNC1(softc);
	if (rc)
		goto exit;
	FUNC5(dma_data->idi_tag, dma_data->idi_map,
	    BUS_DMASYNC_POSTWRITE);

exit:
	return rc;
}