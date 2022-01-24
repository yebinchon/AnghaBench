#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_2__* sc_p ;
struct TYPE_8__ {int nd_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  lastTime; int /*<<< orphan*/  startTime; int /*<<< orphan*/  endTime; int /*<<< orphan*/  elapsedTime; } ;
struct TYPE_7__ {TYPE_4__* node; int /*<<< orphan*/  intr_ch; TYPE_1__ stats; int /*<<< orphan*/  packets; int /*<<< orphan*/ * output_ifp; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int NG_SOURCE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_source_intr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(sc_p sc, uint64_t packets)
{
	if (sc->output_ifp == NULL) {
		FUNC2("ng_source: start without iface configured\n");
		return (ENXIO);
	}

	if (sc->node->nd_flags & NG_SOURCE_ACTIVE)
		return (EBUSY);

	sc->node->nd_flags |= NG_SOURCE_ACTIVE;

	sc->packets = packets;
	FUNC3(&sc->stats.elapsedTime);
	FUNC3(&sc->stats.endTime);
	FUNC0(&sc->stats.startTime);
	FUNC0(&sc->stats.lastTime);
	FUNC1(&sc->intr_ch, sc->node, NULL, 0,
	    ng_source_intr, sc, 0);

	return (0);
}