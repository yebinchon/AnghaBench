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
struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct bwn_softc {TYPE_1__ sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int EDOOFUS ; 
 int FUNC2 (struct bwn_softc*) ; 
 struct bwn_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct bwn_softc *sc = FUNC3(dev);
	int error = EDOOFUS;

	FUNC0(sc);
	if (sc->sc_ic.ic_nrunning > 0)
		error = FUNC2(sc);
	FUNC1(sc);
	if (error == 0)
		FUNC4(&sc->sc_ic);
	return (0);
}