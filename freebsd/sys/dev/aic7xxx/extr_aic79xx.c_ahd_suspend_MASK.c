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
struct ahd_softc {int /*<<< orphan*/  pending_scbs; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 

int
FUNC4(struct ahd_softc *ahd)
{

	FUNC1(ahd);

	if (FUNC0(&ahd->pending_scbs) != NULL) {
		FUNC3(ahd);
		return (EBUSY);
	}
	FUNC2(ahd);
	return (0);
}