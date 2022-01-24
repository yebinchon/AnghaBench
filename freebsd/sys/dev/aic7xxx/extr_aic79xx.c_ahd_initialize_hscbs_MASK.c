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
struct TYPE_2__ {int maxhscbs; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int) ; 

__attribute__((used)) static void
FUNC3(struct ahd_softc *ahd)
{
	int i;

	for (i = 0; i < ahd->scb_data.maxhscbs; i++) {
		FUNC2(ahd, i);

		/* Clear the control byte. */
		FUNC0(ahd, SCB_CONTROL, 0);

		/* Set the next pointer */
		FUNC1(ahd, SCB_NEXT, SCB_LIST_NULL);
	}
}