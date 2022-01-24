#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; int count; TYPE_4__* entries; } ;
struct TYPE_7__ {int (* arswitch_atu_fetch_table ) (struct arswitch_softc*,TYPE_4__*,int) ;} ;
struct arswitch_softc {TYPE_2__ atu; TYPE_1__ hal; } ;
struct TYPE_9__ {int es_nitems; } ;
typedef  TYPE_3__ etherswitch_atu_table_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arswitch_softc*) ; 
 struct arswitch_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct arswitch_softc*,TYPE_4__*,int) ; 
 int FUNC4 (struct arswitch_softc*,TYPE_4__*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, etherswitch_atu_table_t *table)
{
	struct arswitch_softc *sc;
	int err, nitems;

	sc = FUNC2(dev);

	FUNC0(sc);
	/* Initial setup */
	nitems = 0;
	err = sc->hal.arswitch_atu_fetch_table(sc, NULL, 0);

	/* fetch - ideally yes we'd fetch into a separate table then switch */
	while (err == 0 && nitems < sc->atu.size) {
		err = sc->hal.arswitch_atu_fetch_table(sc,
		    &sc->atu.entries[nitems], 1);
		if (err == 0) {
			sc->atu.entries[nitems].id = nitems;
			nitems++;
		}
	}
	sc->atu.count = nitems;
	FUNC1(sc);

	table->es_nitems = nitems;

	return (0);
}