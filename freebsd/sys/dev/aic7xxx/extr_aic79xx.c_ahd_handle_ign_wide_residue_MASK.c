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
typedef  int /*<<< orphan*/  u_int ;
struct scb {struct ahd_dma_seg* sg_list; } ;
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;
struct ahd_dma64_seg {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;
struct ahd_devinfo {int dummy; } ;

/* Variables and functions */
 int AHD_64BIT_ADDRESSING ; 
 int AHD_SG_LEN_MASK ; 
 scalar_t__ CAM_DIR_IN ; 
 int DPHASE ; 
 int /*<<< orphan*/  SCB_RESIDUAL_DATACNT ; 
 int /*<<< orphan*/  SCB_RESIDUAL_SGPTR ; 
 int /*<<< orphan*/  SCB_TASK_ATTRIBUTE ; 
 int SCB_XFERLEN_ODD ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int SG_LIST_NULL ; 
 int SG_PTR_MASK ; 
 int /*<<< orphan*/  SHADDR ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 struct ahd_dma_seg* FUNC8 (struct ahd_softc*,struct scb*,int) ; 
 int FUNC9 (struct ahd_softc*,struct scb*,struct ahd_dma_seg*) ; 
 scalar_t__ FUNC10 (struct scb*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
	u_int scb_index;
	struct scb *scb;

	scb_index = FUNC0(ahd);
	scb = FUNC5(ahd, scb_index);
	/*
	 * XXX Actually check data direction in the sequencer?
	 * Perhaps add datadir to some spare bits in the hscb?
	 */
	if ((FUNC1(ahd, SEQ_FLAGS) & DPHASE) == 0
	 || FUNC10(scb) != CAM_DIR_IN) {
		/*
		 * Ignore the message if we haven't
		 * seen an appropriate data phase yet.
		 */
	} else {
		/*
		 * If the residual occurred on the last
		 * transfer and the transfer request was
		 * expected to end on an odd count, do
		 * nothing.  Otherwise, subtract a byte
		 * and update the residual count accordingly.
		 */
		uint32_t sgptr;

		sgptr = FUNC2(ahd, SCB_RESIDUAL_SGPTR);
		if ((sgptr & SG_LIST_NULL) != 0
		 && (FUNC2(ahd, SCB_TASK_ATTRIBUTE)
		     & SCB_XFERLEN_ODD) != 0) {
			/*
			 * If the residual occurred on the last
			 * transfer and the transfer request was
			 * expected to end on an odd count, do
			 * nothing.
			 */
		} else {
			uint32_t data_cnt;
			uint64_t data_addr;
			uint32_t sglen;

			/* Pull in the rest of the sgptr */
			sgptr = FUNC3(ahd, SCB_RESIDUAL_SGPTR);
			data_cnt = FUNC3(ahd, SCB_RESIDUAL_DATACNT);
			if ((sgptr & SG_LIST_NULL) != 0) {
				/*
				 * The residual data count is not updated
				 * for the command run to completion case.
				 * Explicitly zero the count.
				 */
				data_cnt &= ~AHD_SG_LEN_MASK;
			}
			data_addr = FUNC4(ahd, SHADDR);
			data_cnt += 1;
			data_addr -= 1;
			sgptr &= SG_PTR_MASK;
			if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
				struct ahd_dma64_seg *sg;

				sg = FUNC8(ahd, scb, sgptr);

				/*
				 * The residual sg ptr points to the next S/G
				 * to load so we must go back one.
				 */
				sg--;
				sglen = FUNC11(sg->len) & AHD_SG_LEN_MASK;
				if (sg != scb->sg_list
				 && sglen < (data_cnt & AHD_SG_LEN_MASK)) {

					sg--;
					sglen = FUNC11(sg->len);
					/*
					 * Preserve High Address and SG_LIST
					 * bits while setting the count to 1.
					 */
					data_cnt = 1|(sglen&(~AHD_SG_LEN_MASK));
					data_addr = FUNC12(sg->addr)
						  + (sglen & AHD_SG_LEN_MASK)
						  - 1;

					/*
					 * Increment sg so it points to the
					 * "next" sg.
					 */
					sg++;
					sgptr = FUNC9(ahd, scb,
								   sg);
				}
			} else {
				struct ahd_dma_seg *sg;

				sg = FUNC8(ahd, scb, sgptr);

				/*
				 * The residual sg ptr points to the next S/G
				 * to load so we must go back one.
				 */
				sg--;
				sglen = FUNC11(sg->len) & AHD_SG_LEN_MASK;
				if (sg != scb->sg_list
				 && sglen < (data_cnt & AHD_SG_LEN_MASK)) {

					sg--;
					sglen = FUNC11(sg->len);
					/*
					 * Preserve High Address and SG_LIST
					 * bits while setting the count to 1.
					 */
					data_cnt = 1|(sglen&(~AHD_SG_LEN_MASK));
					data_addr = FUNC11(sg->addr)
						  + (sglen & AHD_SG_LEN_MASK)
						  - 1;

					/*
					 * Increment sg so it points to the
					 * "next" sg.
					 */
					sg++;
					sgptr = FUNC9(ahd, scb,
								  sg);
				}
			}
			/*
			 * Toggle the "oddness" of the transfer length
			 * to handle this mid-transfer ignore wide
			 * residue.  This ensures that the oddness is
			 * correct for subsequent data transfers.
			 */
			FUNC6(ahd, SCB_TASK_ATTRIBUTE,
			    FUNC2(ahd, SCB_TASK_ATTRIBUTE)
			    ^ SCB_XFERLEN_ODD);

			FUNC7(ahd, SCB_RESIDUAL_SGPTR, sgptr);
			FUNC7(ahd, SCB_RESIDUAL_DATACNT, data_cnt);
			/*
			 * The FIFO's pointers will be updated if/when the
			 * sequencer re-enters a data phase.
			 */
		}
	}
}