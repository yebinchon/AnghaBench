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
struct TYPE_2__ {int /*<<< orphan*/  pf_head; } ;
struct pccard_softc {TYPE_1__ card; scalar_t__ sc_enabled_count; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pccard_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pccard_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct pccard_softc *sc = FUNC0(dev);
	int err;

	sc->dev = dev;
	sc->sc_enabled_count = 0;
	if ((err = FUNC3(sc)) != 0)
		return  (err);
	FUNC1(&sc->card.pf_head);
	return (FUNC2(dev));
}