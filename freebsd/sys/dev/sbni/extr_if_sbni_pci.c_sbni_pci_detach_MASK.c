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
struct sbni_softc {scalar_t__ slave_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct sbni_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbni_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct sbni_softc *sc;

	sc = FUNC0(dev);
	FUNC2(sc);
	if (sc->slave_sc)
		FUNC2(sc);
	
	FUNC3(sc);
	if (sc->slave_sc)
		FUNC1(sc->slave_sc, M_DEVBUF);
	return (0);
}