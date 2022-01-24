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
struct vtscsi_softc {int /*<<< orphan*/ * vtscsi_sim; int /*<<< orphan*/ * vtscsi_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct vtscsi_softc *sc)
{

	FUNC0(sc);

	if (sc->vtscsi_path != NULL) {
		FUNC4(sc);

		FUNC6(sc->vtscsi_path);
		sc->vtscsi_path = NULL;

		FUNC5(FUNC3(sc->vtscsi_sim));
	}

	if (sc->vtscsi_sim != NULL) {
		FUNC2(sc->vtscsi_sim, 1);
		sc->vtscsi_sim = NULL;
	}

	FUNC1(sc);
}