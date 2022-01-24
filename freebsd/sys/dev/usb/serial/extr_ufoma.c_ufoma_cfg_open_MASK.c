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
struct ufoma_softc {int sc_num_msg; scalar_t__ sc_currentmode; int /*<<< orphan*/  sc_modetoactivate; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;

/* Variables and functions */
 scalar_t__ UMCPC_ACM_MODE_DEACTIVATED ; 
 scalar_t__ UMCPC_ACM_MODE_UNLINKED ; 
 int /*<<< orphan*/  FUNC0 (struct ufoma_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufoma_softc*) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom)
{
	struct ufoma_softc *sc = ucom->sc_parent;

	/* empty input queue */

	if (sc->sc_num_msg != 0xFF) {
		sc->sc_num_msg++;
	}
	if (sc->sc_currentmode == UMCPC_ACM_MODE_UNLINKED) {
		FUNC1(sc);
	}
	if (sc->sc_currentmode == UMCPC_ACM_MODE_DEACTIVATED) {
		FUNC0(sc, sc->sc_modetoactivate);
	}
}