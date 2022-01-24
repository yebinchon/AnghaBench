#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* cdb_ptr; int* cdb_bytes; } ;
struct TYPE_9__ {int cdb_len; TYPE_1__ cdb_io; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  target_lun; } ;
union ccb {TYPE_3__ csio; TYPE_2__ ccb_h; } ;
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct vscsi_xfer {int srp_iu_size; int srp_iu_offset; TYPE_4__* sc; union ccb* ccb; } ;
struct vscsi_crq {int iu_length; int valid; int format; int iu_data; } ;
struct srp_cmd {int additional_cdb; int tag; int formats; int /*<<< orphan*/ * data_payload; int /*<<< orphan*/  lun; int /*<<< orphan*/ * cdb; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int ds_len; int ds_addr; } ;
typedef  TYPE_5__ bus_dma_segment_t ;
struct TYPE_10__ {int srp_iu_phys; int /*<<< orphan*/  unit; int /*<<< orphan*/  crq_map; int /*<<< orphan*/  crq_tag; scalar_t__ srp_iu_queue; int /*<<< orphan*/  srp_iu_arena; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CAM_CDB_POINTER ; 
#define  CAM_DIR_IN 129 
 int CAM_DIR_MASK ; 
#define  CAM_DIR_OUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  H_SEND_CRQ ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int M_BESTFIT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  SRP_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct srp_cmd*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static void
FUNC11(void *xxp, bus_dma_segment_t *segs, int nsegs, int err)
{
	struct vscsi_xfer *xp = xxp;
	uint8_t *cdb;
	union ccb *ccb = xp->ccb;
	struct srp_cmd *cmd;
	uint64_t chunk_addr;
	uint32_t chunk_size;
	int desc_start, i;
	struct vscsi_crq crq;

	FUNC1(err == 0, ("DMA error %d\n", err));

	FUNC6(&xp->sc->io_lock, MA_OWNED);

	cdb = (ccb->ccb_h.flags & CAM_CDB_POINTER) ?
	    ccb->csio.cdb_io.cdb_ptr : ccb->csio.cdb_io.cdb_bytes;

	/* Command format from Table 20, page 37 of SRP spec */
	crq.iu_length = 48 + ((nsegs > 1) ? 20 : 16) + 
	    ((ccb->csio.cdb_len > 16) ? (ccb->csio.cdb_len - 16) : 0);
	xp->srp_iu_size = crq.iu_length;
	if (nsegs > 1)
		xp->srp_iu_size += nsegs*16;
	xp->srp_iu_size = FUNC9(xp->srp_iu_size, 16);
	err = FUNC10(xp->sc->srp_iu_arena, xp->srp_iu_size,
	    M_BESTFIT | M_NOWAIT, &xp->srp_iu_offset);
	if (err)
		FUNC7("Error during VMEM allocation (%d)", err);

	cmd = (struct srp_cmd *)((uint8_t *)xp->sc->srp_iu_queue +
	    (uintptr_t)xp->srp_iu_offset);
	FUNC3(cmd, xp->srp_iu_size);
	cmd->type = SRP_CMD;
	if (ccb->csio.cdb_len > 16)
		cmd->additional_cdb = (ccb->csio.cdb_len - 16) << 2;
	FUNC5(cmd->cdb, cdb, ccb->csio.cdb_len);

	cmd->tag = (uint64_t)(xp); /* Let the responder find this again */
	cmd->lun = FUNC4(FUNC0(ccb->ccb_h.target_lun));

	if (nsegs > 1) {
		/* Use indirect descriptors */
		switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
		case CAM_DIR_OUT:
			cmd->formats = (2 << 4);
			break;
		case CAM_DIR_IN:
			cmd->formats = 2;
			break;
		default:
			FUNC7("Does not support bidirectional commands (%d)",
			    ccb->ccb_h.flags & CAM_DIR_MASK);
			break;
		}

		desc_start = ((ccb->csio.cdb_len > 16) ?
		    ccb->csio.cdb_len - 16 : 0);
		chunk_addr = xp->sc->srp_iu_phys + xp->srp_iu_offset + 20 +
		    desc_start + sizeof(*cmd);
		chunk_size = 16*nsegs;
		FUNC5(&cmd->data_payload[desc_start], &chunk_addr, 8);
		FUNC5(&cmd->data_payload[desc_start+12], &chunk_size, 4);
		chunk_size = 0;
		for (i = 0; i < nsegs; i++)
			chunk_size += segs[i].ds_len;
		FUNC5(&cmd->data_payload[desc_start+16], &chunk_size, 4);
		desc_start += 20;
		for (i = 0; i < nsegs; i++) {
			chunk_addr = segs[i].ds_addr;
			chunk_size = segs[i].ds_len;

			FUNC5(&cmd->data_payload[desc_start + 16*i],
			    &chunk_addr, 8);
			/* Set handle tag to 0 */
			FUNC5(&cmd->data_payload[desc_start + 16*i + 12],
			    &chunk_size, 4);
		}
	} else if (nsegs == 1) {
		switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
		case CAM_DIR_OUT:
			cmd->formats = (1 << 4);
			break;
		case CAM_DIR_IN:
			cmd->formats = 1;
			break;
		default:
			FUNC7("Does not support bidirectional commands (%d)",
			    ccb->ccb_h.flags & CAM_DIR_MASK);
			break;
		}

		/*
		 * Memory descriptor:
		 * 8 byte address
		 * 4 byte handle
		 * 4 byte length
		 */

		chunk_addr = segs[0].ds_addr;
		chunk_size = segs[0].ds_len;
		desc_start = ((ccb->csio.cdb_len > 16) ?
		    ccb->csio.cdb_len - 16 : 0);

		FUNC5(&cmd->data_payload[desc_start], &chunk_addr, 8);
		/* Set handle tag to 0 */
		FUNC5(&cmd->data_payload[desc_start+12], &chunk_size, 4);
		FUNC1(xp->srp_iu_size >= 48 + ((ccb->csio.cdb_len > 16) ?
		    ccb->csio.cdb_len : 16), ("SRP IU command length"));
	} else {
		cmd->formats = 0;
	}
	FUNC2(xp->sc->crq_tag, xp->sc->crq_map, BUS_DMASYNC_PREWRITE);

	/* Create CRQ entry */
	crq.valid = 0x80;
	crq.format = 0x01;
	crq.iu_data = xp->sc->srp_iu_phys + xp->srp_iu_offset;

	err = FUNC8(H_SEND_CRQ, xp->sc->unit, ((uint64_t *)(&crq))[0],
	    ((uint64_t *)(&crq))[1]);
	if (err != 0)
		FUNC7("CRQ send failure (%d)", err);
}