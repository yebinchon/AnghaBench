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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
struct scb {int dummy; } ;
struct ahc_softc {size_t qinfifonext; int features; int /*<<< orphan*/ * qinfifo; } ;

/* Variables and functions */
 int AHC_QUEUE_REGS ; 
 int /*<<< orphan*/  HNSCB_QOFF ; 
 int /*<<< orphan*/  KERNEL_QINPOS ; 
 struct scb* FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct scb*,struct scb*) ; 

void
FUNC4(struct ahc_softc *ahc, struct scb *scb)
{
	struct scb *prev_scb;

	prev_scb = NULL;
	if (FUNC2(ahc) != 0) {
		u_int prev_tag;
		uint8_t prev_pos;

		prev_pos = ahc->qinfifonext - 1;
		prev_tag = ahc->qinfifo[prev_pos];
		prev_scb = FUNC0(ahc, prev_tag);
	}
	FUNC3(ahc, prev_scb, scb);
	if ((ahc->features & AHC_QUEUE_REGS) != 0) {
		FUNC1(ahc, HNSCB_QOFF, ahc->qinfifonext);
	} else {
		FUNC1(ahc, KERNEL_QINPOS, ahc->qinfifonext);
	}
}