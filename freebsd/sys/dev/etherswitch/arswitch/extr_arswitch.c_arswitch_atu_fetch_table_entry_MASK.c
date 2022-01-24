#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; int /*<<< orphan*/ * entries; } ;
struct arswitch_softc {TYPE_1__ atu; } ;
struct TYPE_6__ {int id; } ;
typedef  TYPE_2__ etherswitch_atu_entry_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arswitch_softc*) ; 
 int ENOENT ; 
 struct arswitch_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, etherswitch_atu_entry_t *e)
{
	struct arswitch_softc *sc;
	int id;

	sc = FUNC2(dev);
	id = e->id;

	FUNC0(sc);
	if (id > sc->atu.count) {
		FUNC1(sc);
		return (ENOENT);
	}

	FUNC3(e, &sc->atu.entries[id], sizeof(*e));
	FUNC1(sc);
	return (0);
}