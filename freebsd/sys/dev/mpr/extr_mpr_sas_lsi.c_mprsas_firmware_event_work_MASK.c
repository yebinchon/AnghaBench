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
struct mpr_softc {TYPE_1__* sassc; } ;
struct mpr_fw_event_work {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ev_queue; } ;

/* Variables and functions */
 struct mpr_fw_event_work* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mpr_fw_event_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  FUNC2 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_softc*,struct mpr_fw_event_work*) ; 

void
FUNC5(void *arg, int pending)
{
	struct mpr_fw_event_work *fw_event;
	struct mpr_softc *sc;

	sc = (struct mpr_softc *)arg;
	FUNC2(sc);
	while ((fw_event = FUNC0(&sc->sassc->ev_queue)) != NULL) {
		FUNC1(&sc->sassc->ev_queue, fw_event, ev_link);
		FUNC4(sc, fw_event);
	}
	FUNC3(sc);
}