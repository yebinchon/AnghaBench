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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct cyapa_softc {TYPE_1__ selinfo; scalar_t__ isselect; scalar_t__ blocked; int /*<<< orphan*/  rfifo; scalar_t__ data_signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC5(struct cyapa_softc *sc)
{

	FUNC0(sc);

	if (sc->data_signal || !FUNC2(sc, &sc->rfifo)) {
		FUNC1(&sc->selinfo.si_note, 0);
		if (sc->blocked || sc->isselect) {
			if (sc->blocked) {
			    sc->blocked = 0;
			    FUNC4(&sc->blocked);
			}
			if (sc->isselect) {
			    sc->isselect = 0;
			    FUNC3(&sc->selinfo);
			}
		}
	}
}