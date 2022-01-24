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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct scb {int dummy; } ;
struct ahd_softc {int flags; int features; } ;
struct ahd_dma_seg {int len; int addr; } ;
struct ahd_dma64_seg {int addr; int len; } ;

/* Variables and functions */
 int AHD_64BIT_ADDRESSING ; 
 int AHD_DMA_LAST_SEG ; 
 int AHD_NEW_DFCNTRL_OPTS ; 
 int AHD_SG_HIGH_ADDR_MASK ; 
 int AHD_SG_LEN_MASK ; 
 scalar_t__ CCSGCTL ; 
 int CFG4DATA ; 
 int CLRCFG4DATA ; 
 int CLRCHN ; 
 int CLRSAVEPTRS ; 
 scalar_t__ CLRSEQINTSRC ; 
 scalar_t__ DFCNTRL ; 
 scalar_t__ DFFSXFRCTL ; 
 scalar_t__ DFSTATUS ; 
 int DIRECTION ; 
 int ENSAVEPTRS ; 
 int FETCH_INPROG ; 
 int FIFOEMP ; 
 int FIFOFLUSH ; 
 int /*<<< orphan*/  HADDR ; 
 scalar_t__ HCNT ; 
 int HDMAEN ; 
 int HDMAENACK ; 
 int INVALID_ADDR ; 
 int LAST_SEG ; 
 int LAST_SEG_DONE ; 
 int LOADING_NEEDED ; 
 scalar_t__ LONGJMP_ADDR ; 
 int PRELOADEN ; 
 int PRELOAD_AVAIL ; 
 int SAVEPTRS ; 
 scalar_t__ SCB_DATACNT ; 
 int /*<<< orphan*/  SCB_DATAPTR ; 
 scalar_t__ SCB_FIFO_USE_COUNT ; 
 scalar_t__ SCB_RESIDUAL_DATACNT ; 
 scalar_t__ SCB_RESIDUAL_SGPTR ; 
 scalar_t__ SCB_SGPTR ; 
 int SCSIEN ; 
 int SCSIENWRDIS ; 
 scalar_t__ SEQIMODE ; 
 scalar_t__ SEQINTSRC ; 
 int SG_ADDR_MASK ; 
 scalar_t__ SG_CACHE_PRE ; 
 scalar_t__ SG_CACHE_SHADOW ; 
 int SG_FULL_RESID ; 
 int SG_LIST_NULL ; 
 int SG_PTR_MASK ; 
 scalar_t__ SG_STATE ; 
 int /*<<< orphan*/  SHADDR ; 
 int /*<<< orphan*/  SHCNT ; 
 int FUNC0 (struct ahd_softc*,scalar_t__) ; 
 int FUNC1 (struct ahd_softc*,scalar_t__) ; 
 int FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ahd_softc*,scalar_t__) ; 
 int FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct ahd_softc*,struct scb*,int) ; 

__attribute__((used)) static void
FUNC11(struct ahd_softc *ahd, struct scb *scb)
{
	u_int seqintsrc;

	seqintsrc = FUNC0(ahd, SEQINTSRC);
	if ((seqintsrc & CFG4DATA) != 0) {
		uint32_t datacnt;
		uint32_t sgptr;

		/*
		 * Clear full residual flag.
		 */
		sgptr = FUNC3(ahd, SCB_SGPTR) & ~SG_FULL_RESID;
		FUNC6(ahd, SCB_SGPTR, sgptr);

		/*
		 * Load datacnt and address.
		 */
		datacnt = FUNC3(ahd, SCB_DATACNT);
		if ((datacnt & AHD_DMA_LAST_SEG) != 0) {
			sgptr |= LAST_SEG;
			FUNC6(ahd, SG_STATE, 0);
		} else
			FUNC6(ahd, SG_STATE, LOADING_NEEDED);
		FUNC8(ahd, HADDR, FUNC5(ahd, SCB_DATAPTR));
		FUNC7(ahd, HCNT, datacnt & AHD_SG_LEN_MASK);
		FUNC6(ahd, SG_CACHE_PRE, sgptr);
		FUNC6(ahd, DFCNTRL, PRELOADEN|SCSIEN|HDMAEN);

		/*
		 * Initialize Residual Fields.
		 */
		FUNC6(ahd, SCB_RESIDUAL_DATACNT+3, datacnt >> 24);
		FUNC7(ahd, SCB_RESIDUAL_SGPTR, sgptr & SG_PTR_MASK);

		/*
		 * Mark the SCB as having a FIFO in use.
		 */
		FUNC6(ahd, SCB_FIFO_USE_COUNT,
			 FUNC1(ahd, SCB_FIFO_USE_COUNT) + 1);

		/*
		 * Install a "fake" handler for this FIFO.
		 */
		FUNC9(ahd, LONGJMP_ADDR, 0);

		/*
		 * Notify the hardware that we have satisfied
		 * this sequencer interrupt.
		 */
		FUNC6(ahd, CLRSEQINTSRC, CLRCFG4DATA);
	} else if ((seqintsrc & SAVEPTRS) != 0) {
		uint32_t sgptr;
		uint32_t resid;

		if ((FUNC0(ahd, LONGJMP_ADDR+1)&INVALID_ADDR) != 0) {
			/*
			 * Snapshot Save Pointers.  All that
			 * is necessary to clear the snapshot
			 * is a CLRCHN.
			 */
			goto clrchn;
		}

		/*
		 * Disable S/G fetch so the DMA engine
		 * is available to future users.
		 */
		if ((FUNC0(ahd, SG_STATE) & FETCH_INPROG) != 0)
			FUNC6(ahd, CCSGCTL, 0);
		FUNC6(ahd, SG_STATE, 0);

		/*
		 * Flush the data FIFO.  Strickly only
		 * necessary for Rev A parts.
		 */
		FUNC6(ahd, DFCNTRL, FUNC0(ahd, DFCNTRL) | FIFOFLUSH);

		/*
		 * Calculate residual.
		 */
		sgptr = FUNC3(ahd, SCB_RESIDUAL_SGPTR);
		resid = FUNC2(ahd, SHCNT);
		resid |= FUNC1(ahd, SCB_RESIDUAL_DATACNT+3) << 24;
		FUNC7(ahd, SCB_RESIDUAL_DATACNT, resid);
		if ((FUNC0(ahd, SG_CACHE_SHADOW) & LAST_SEG) == 0) {
			/*
			 * Must back up to the correct S/G element.
			 * Typically this just means resetting our
			 * low byte to the offset in the SG_CACHE,
			 * but if we wrapped, we have to correct
			 * the other bytes of the sgptr too.
			 */
			if ((FUNC0(ahd, SG_CACHE_SHADOW) & 0x80) != 0
			 && (sgptr & 0x80) == 0)
				sgptr -= 0x100;
			sgptr &= ~0xFF;
			sgptr |= FUNC0(ahd, SG_CACHE_SHADOW)
			       & SG_ADDR_MASK;
			FUNC7(ahd, SCB_RESIDUAL_SGPTR, sgptr);
			FUNC6(ahd, SCB_RESIDUAL_DATACNT + 3, 0);
		} else if ((resid & AHD_SG_LEN_MASK) == 0) {
			FUNC6(ahd, SCB_RESIDUAL_SGPTR,
				 sgptr | SG_LIST_NULL);
		}
		/*
		 * Save Pointers.
		 */
		FUNC8(ahd, SCB_DATAPTR, FUNC4(ahd, SHADDR));
		FUNC7(ahd, SCB_DATACNT, resid);
		FUNC7(ahd, SCB_SGPTR, sgptr);
		FUNC6(ahd, CLRSEQINTSRC, CLRSAVEPTRS);
		FUNC6(ahd, SEQIMODE,
			 FUNC0(ahd, SEQIMODE) | ENSAVEPTRS);
		/*
		 * If the data is to the SCSI bus, we are
		 * done, otherwise wait for FIFOEMP.
		 */
		if ((FUNC0(ahd, DFCNTRL) & DIRECTION) != 0)
			goto clrchn;
	} else if ((FUNC0(ahd, SG_STATE) & LOADING_NEEDED) != 0) {
		uint32_t sgptr;
		uint64_t data_addr;
		uint32_t data_len;
		u_int	 dfcntrl;

		/*
		 * Disable S/G fetch so the DMA engine
		 * is available to future users.  We won't
		 * be using the DMA engine to load segments.
		 */
		if ((FUNC0(ahd, SG_STATE) & FETCH_INPROG) != 0) {
			FUNC6(ahd, CCSGCTL, 0);
			FUNC6(ahd, SG_STATE, LOADING_NEEDED);
		}

		/*
		 * Wait for the DMA engine to notice that the
		 * host transfer is enabled and that there is
		 * space in the S/G FIFO for new segments before
		 * loading more segments.
		 */
		if ((FUNC0(ahd, DFSTATUS) & PRELOAD_AVAIL) != 0
		 && (FUNC0(ahd, DFCNTRL) & HDMAENACK) != 0) {

			/*
			 * Determine the offset of the next S/G
			 * element to load.
			 */
			sgptr = FUNC3(ahd, SCB_RESIDUAL_SGPTR);
			sgptr &= SG_PTR_MASK;
			if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
				struct ahd_dma64_seg *sg;

				sg = FUNC10(ahd, scb, sgptr);
				data_addr = sg->addr;
				data_len = sg->len;
				sgptr += sizeof(*sg);
			} else {
				struct	ahd_dma_seg *sg;

				sg = FUNC10(ahd, scb, sgptr);
				data_addr = sg->len & AHD_SG_HIGH_ADDR_MASK;
				data_addr <<= 8;
				data_addr |= sg->addr;
				data_len = sg->len;
				sgptr += sizeof(*sg);
			}

			/*
			 * Update residual information.
			 */
			FUNC6(ahd, SCB_RESIDUAL_DATACNT+3, data_len >> 24);
			FUNC7(ahd, SCB_RESIDUAL_SGPTR, sgptr);

			/*
			 * Load the S/G.
			 */
			if (data_len & AHD_DMA_LAST_SEG) {
				sgptr |= LAST_SEG;
				FUNC6(ahd, SG_STATE, 0);
			}
			FUNC8(ahd, HADDR, data_addr);
			FUNC7(ahd, HCNT, data_len & AHD_SG_LEN_MASK);
			FUNC6(ahd, SG_CACHE_PRE, sgptr & 0xFF);

			/*
			 * Advertise the segment to the hardware.
			 */
			dfcntrl = FUNC0(ahd, DFCNTRL)|PRELOADEN|HDMAEN;
			if ((ahd->features & AHD_NEW_DFCNTRL_OPTS) != 0) {
				/*
				 * Use SCSIENWRDIS so that SCSIEN
				 * is never modified by this
				 * operation.
				 */
				dfcntrl |= SCSIENWRDIS;
			}
			FUNC6(ahd, DFCNTRL, dfcntrl);
		}
	} else if ((FUNC0(ahd, SG_CACHE_SHADOW) & LAST_SEG_DONE) != 0) {

		/*
		 * Transfer completed to the end of SG list
		 * and has flushed to the host.
		 */
		FUNC6(ahd, SCB_SGPTR,
			 FUNC1(ahd, SCB_SGPTR) | SG_LIST_NULL);
		goto clrchn;
	} else if ((FUNC0(ahd, DFSTATUS) & FIFOEMP) != 0) {
clrchn:
		/*
		 * Clear any handler for this FIFO, decrement
		 * the FIFO use count for the SCB, and release
		 * the FIFO.
		 */
		FUNC6(ahd, LONGJMP_ADDR + 1, INVALID_ADDR);
		FUNC6(ahd, SCB_FIFO_USE_COUNT,
			 FUNC1(ahd, SCB_FIFO_USE_COUNT) - 1);
		FUNC6(ahd, DFFSXFRCTL, CLRCHN);
	}
}