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
struct ahd_softc {int /*<<< orphan*/  hs_mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENINT_COALESCE ; 
 int /*<<< orphan*/  HS_MAILBOX ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 

void
FUNC3(struct ahd_softc *ahd, int enable)
{

	ahd->hs_mailbox &= ~ENINT_COALESCE;
	if (enable)
		ahd->hs_mailbox |= ENINT_COALESCE;
	FUNC1(ahd, HS_MAILBOX, ahd->hs_mailbox);
	FUNC0(ahd);
	FUNC2(ahd);
}