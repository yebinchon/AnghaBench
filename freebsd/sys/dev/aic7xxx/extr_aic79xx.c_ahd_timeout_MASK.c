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
struct scb {int flags; struct ahd_softc* ahd_softc; } ;
struct ahd_softc {int /*<<< orphan*/  timedout_scbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct scb*,int /*<<< orphan*/ ) ; 
 int SCB_ACTIVE ; 
 int SCB_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  timedout_links ; 

void
FUNC2(struct scb *scb)
{
	struct ahd_softc *ahd;

	ahd = scb->ahd_softc;
	if ((scb->flags & SCB_ACTIVE) != 0) {
		if ((scb->flags & SCB_TIMEDOUT) == 0) {
			FUNC0(&ahd->timedout_scbs, scb,
					 timedout_links);
			scb->flags |= SCB_TIMEDOUT;
		}
		FUNC1(ahd);
	}
}