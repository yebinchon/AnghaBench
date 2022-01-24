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
typedef  int u_int ;
struct scb {int dummy; } ;
struct ahd_softc {int flags; size_t qoutfifonext; int /*<<< orphan*/  qoutfifonext_valid_tag; struct ahd_completion* qoutfifo; } ;
struct ahd_completion {int sg_status; int /*<<< orphan*/  tag; int /*<<< orphan*/  valid_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int AHD_QOUT_SIZE ; 
 int AHD_RUNNING_QOUTFIFO ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  QOUTFIFO_ENTRY_VALID ; 
 int SG_STATUS_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct scb*) ; 
 struct scb* FUNC4 (struct ahd_softc*,int) ; 
 char* FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,size_t) ; 

void
FUNC10(struct ahd_softc *ahd)
{
	struct ahd_completion *completion;
	struct scb *scb;
	u_int  scb_index;

	if ((ahd->flags & AHD_RUNNING_QOUTFIFO) != 0)
		FUNC8("ahd_run_qoutfifo recursion");
	ahd->flags |= AHD_RUNNING_QOUTFIFO;
	FUNC6(ahd, BUS_DMASYNC_POSTREAD);
	for (;;) {
		completion = &ahd->qoutfifo[ahd->qoutfifonext];

		if (completion->valid_tag != ahd->qoutfifonext_valid_tag)
			break;

		scb_index = FUNC7(completion->tag);
		scb = FUNC4(ahd, scb_index);
		if (scb == NULL) {
			FUNC9("%s: WARNING no command for scb %d "
			       "(cmdcmplt)\nQOUTPOS = %d\n",
			       FUNC5(ahd), scb_index,
			       ahd->qoutfifonext);
			FUNC0(ahd);
			FUNC2(ahd);
		} else if ((completion->sg_status & SG_STATUS_VALID) != 0) {
			FUNC3(ahd, scb);
		} else {
			FUNC1(ahd, scb);
		}

		ahd->qoutfifonext = (ahd->qoutfifonext+1) & (AHD_QOUT_SIZE-1);
		if (ahd->qoutfifonext == 0)
			ahd->qoutfifonext_valid_tag ^= QOUTFIFO_ENTRY_VALID;
	}
	ahd->flags &= ~AHD_RUNNING_QOUTFIFO;
}