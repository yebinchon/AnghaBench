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
struct terasic_mtl_softc {int /*<<< orphan*/ * mtl_text_cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct terasic_mtl_softc *sc)
{

	if (sc->mtl_text_cdev != NULL) {
		FUNC1(sc->mtl_text_cdev);
		FUNC0(sc);
	}
}