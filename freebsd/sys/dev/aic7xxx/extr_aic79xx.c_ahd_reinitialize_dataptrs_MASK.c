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
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct ahd_dma64_seg {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
typedef  int ahd_mode_state ;

/* Variables and functions */
 int AHD_64BIT_ADDRESSING ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_MODE_DFF0_MSK ; 
 int AHD_MODE_DFF1_MSK ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_SG_LEN_MASK ; 
 int CLRCHN ; 
 int CLRSHCNT ; 
 int CURRFIFO_0 ; 
 int CURRFIFO_1 ; 
 scalar_t__ DFFSTAT ; 
 scalar_t__ DFFSXFRCTL ; 
 int FIFOFREE ; 
 scalar_t__ HADDR ; 
 scalar_t__ HCNT ; 
 scalar_t__ MDFFSTAT ; 
 int RSTCHN ; 
 scalar_t__ SCB_RESIDUAL_DATACNT ; 
 int /*<<< orphan*/  SCB_RESIDUAL_SGPTR ; 
 int SG_PTR_MASK ; 
 int FUNC1 (struct ahd_softc*) ; 
 int FUNC2 (struct ahd_softc*,scalar_t__) ; 
 int FUNC3 (struct ahd_softc*,scalar_t__) ; 
 int FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC5 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,struct scb*) ; 
 int FUNC9 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct ahd_softc*,struct scb*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(struct ahd_softc *ahd)
{
	struct		 scb *scb;
	ahd_mode_state	 saved_modes;
	u_int		 scb_index;
	u_int		 wait;
	uint32_t	 sgptr;
	uint32_t	 resid;
	uint64_t	 dataptr;

	FUNC0(ahd, AHD_MODE_DFF0_MSK|AHD_MODE_DFF1_MSK,
			 AHD_MODE_DFF0_MSK|AHD_MODE_DFF1_MSK);
			 
	scb_index = FUNC1(ahd);
	scb = FUNC5(ahd, scb_index);

	/*
	 * Release and reacquire the FIFO so we
	 * have a clean slate.
	 */
	FUNC6(ahd, DFFSXFRCTL, CLRCHN);
	wait = 1000;
	while (--wait && !(FUNC2(ahd, MDFFSTAT) & FIFOFREE))
		FUNC12(100);
	if (wait == 0) {
		FUNC8(ahd, scb);
		FUNC15("ahd_reinitialize_dataptrs: Forcing FIFO free.\n");
		FUNC6(ahd, DFFSXFRCTL, RSTCHN|CLRSHCNT);
	}
	saved_modes = FUNC9(ahd);
	FUNC10(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	FUNC6(ahd, DFFSTAT,
		 FUNC2(ahd, DFFSTAT)
		| (saved_modes == 0x11 ? CURRFIFO_1 : CURRFIFO_0));

	/*
	 * Determine initial values for data_addr and data_cnt
	 * for resuming the data phase.
	 */
	sgptr = FUNC4(ahd, SCB_RESIDUAL_SGPTR);
	sgptr &= SG_PTR_MASK;

	resid = (FUNC3(ahd, SCB_RESIDUAL_DATACNT + 2) << 16)
	      | (FUNC3(ahd, SCB_RESIDUAL_DATACNT + 1) << 8)
	      | FUNC3(ahd, SCB_RESIDUAL_DATACNT);

	if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
		struct ahd_dma64_seg *sg;

		sg = FUNC11(ahd, scb, sgptr);

		/* The residual sg_ptr always points to the next sg */
		sg--;

		dataptr = FUNC14(sg->addr)
			+ (FUNC13(sg->len) & AHD_SG_LEN_MASK)
			- resid;
		FUNC7(ahd, HADDR + 4, dataptr >> 32);
	} else {
		struct	 ahd_dma_seg *sg;

		sg = FUNC11(ahd, scb, sgptr);

		/* The residual sg_ptr always points to the next sg */
		sg--;

		dataptr = FUNC13(sg->addr)
			+ (FUNC13(sg->len) & AHD_SG_LEN_MASK)
			- resid;
		FUNC6(ahd, HADDR + 4,
			 (FUNC13(sg->len) & ~AHD_SG_LEN_MASK) >> 24);
	}
	FUNC7(ahd, HADDR, dataptr);
	FUNC6(ahd, HCNT + 2, resid >> 16);
	FUNC6(ahd, HCNT + 1, resid >> 8);
	FUNC6(ahd, HCNT, resid);
}