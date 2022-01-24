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
struct stge_softc {int sc_suspended; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*) ; 
 struct stge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct stge_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct stge_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	FUNC4(sc);
	sc->sc_suspended = 1;
	FUNC3(sc);
	FUNC1(sc);

	return (0);
}