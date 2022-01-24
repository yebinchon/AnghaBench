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
typedef  int uint64_t ;
typedef  int u_int ;
struct scb {scalar_t__ sg_count; TYPE_1__* hscb; } ;
struct ahd_softc {int* qinfifo; int /*<<< orphan*/  qinfifonext; } ;
struct TYPE_2__ {int scsiid; int /*<<< orphan*/  hscb_busaddr; int /*<<< orphan*/  datacnt; int /*<<< orphan*/  dataptr; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int AHD_SHOW_QUEUE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct scb*) ; 
 int ahd_debug ; 
 char* FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,struct scb*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int,int,int,int,int,int) ; 

__attribute__((used)) static __inline void
FUNC14(struct ahd_softc *ahd, struct scb *scb)
{
	FUNC8(ahd, scb);

	if (FUNC1(FUNC2(scb)))
		FUNC12("Attempt to queue invalid SCB tag %x\n",
		      FUNC2(scb));

	/*
	 * Keep a history of SCBs we've downloaded in the qinfifo.
	 */
	ahd->qinfifo[FUNC0(ahd->qinfifonext)] = FUNC2(scb);
	ahd->qinfifonext++;

	if (scb->sg_count != 0)
		FUNC5(ahd, scb);
	else
		FUNC6(ahd, scb);
	FUNC7(ahd, scb);

	/*
	 * Make sure our data is consistent from the
	 * perspective of the adapter.
	 */
	FUNC9(ahd, scb, BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);

#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_QUEUE) != 0) {
		uint64_t host_dataptr;

		host_dataptr = aic_le64toh(scb->hscb->dataptr);
		printf("%s: Queueing SCB %d:0x%x bus addr 0x%x - 0x%x%x/0x%x\n",
		       ahd_name(ahd),
		       SCB_GET_TAG(scb), scb->hscb->scsiid,
		       aic_le32toh(scb->hscb->hscb_busaddr),
		       (u_int)((host_dataptr >> 32) & 0xFFFFFFFF),
		       (u_int)(host_dataptr & 0xFFFFFFFF),
		       aic_le32toh(scb->hscb->datacnt));
	}
#endif
	/* Tell the adapter about the newly queued SCB */
	FUNC4(ahd, ahd->qinfifonext);
}