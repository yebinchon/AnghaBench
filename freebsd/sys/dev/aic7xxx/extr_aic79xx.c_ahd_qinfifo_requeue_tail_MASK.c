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
typedef  size_t u_int ;
struct scb {int dummy; } ;
struct ahd_softc {size_t* qinfifo; scalar_t__ qinfifonext; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_CCHAN ; 
 size_t FUNC0 (scalar_t__) ; 
 struct scb* FUNC1 (struct ahd_softc*,size_t) ; 
 scalar_t__ FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct scb*,struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct ahd_softc *ahd, struct scb *scb)
{
	struct scb	*prev_scb;
	ahd_mode_state	 saved_modes;

	saved_modes = FUNC5(ahd);
	FUNC7(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);
	prev_scb = NULL;
	if (FUNC2(ahd) != 0) {
		u_int prev_tag;
		u_int prev_pos;

		prev_pos = FUNC0(ahd->qinfifonext - 1);
		prev_tag = ahd->qinfifo[prev_pos];
		prev_scb = FUNC1(ahd, prev_tag);
	}
	FUNC3(ahd, prev_scb, scb);
	FUNC6(ahd, ahd->qinfifonext);
	FUNC4(ahd, saved_modes);
}