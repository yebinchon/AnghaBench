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
typedef  size_t u_int ;
struct scb {int dummy; } ;
struct ahc_softc {scalar_t__* qoutfifo; size_t qoutfifonext; int /*<<< orphan*/  shared_data_dmamap; int /*<<< orphan*/  shared_data_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,struct scb*) ; 
 struct scb* FUNC1 (struct ahc_softc*,size_t) ; 
 char* FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t,int) ; 

void
FUNC7(struct ahc_softc *ahc)
{
	struct scb *scb;
	u_int  scb_index;

	FUNC3(ahc, BUS_DMASYNC_POSTREAD);
	while (ahc->qoutfifo[ahc->qoutfifonext] != SCB_LIST_NULL) {

		scb_index = ahc->qoutfifo[ahc->qoutfifonext];
		if ((ahc->qoutfifonext & 0x03) == 0x03) {
			u_int modnext;

			/*
			 * Clear 32bits of QOUTFIFO at a time
			 * so that we don't clobber an incoming
			 * byte DMA to the array on architectures
			 * that only support 32bit load and store
			 * operations.
			 */
			modnext = ahc->qoutfifonext & ~0x3;
			*((uint32_t *)(&ahc->qoutfifo[modnext])) = 0xFFFFFFFFUL;
			FUNC5(ahc, ahc->shared_data_dmat,
					ahc->shared_data_dmamap,
					/*offset*/modnext, /*len*/4,
					BUS_DMASYNC_PREREAD);
		}
		ahc->qoutfifonext++;

		scb = FUNC1(ahc, scb_index);
		if (scb == NULL) {
			FUNC6("%s: WARNING no command for scb %d "
			       "(cmdcmplt)\nQOUTPOS = %d\n",
			       FUNC2(ahc), scb_index,
			       (ahc->qoutfifonext - 1) & 0xFF);
			continue;
		}

		/*
		 * Save off the residual
		 * if there is one.
		 */
		FUNC4(ahc, scb);
		FUNC0(ahc, scb);
	}
}