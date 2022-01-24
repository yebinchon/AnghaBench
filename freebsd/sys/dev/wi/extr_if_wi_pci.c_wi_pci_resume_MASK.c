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
struct ieee80211com {scalar_t__ ic_nrunning; } ;
struct wi_softc {scalar_t__ wi_bus_type; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ WI_BUS_PCI_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*) ; 
 struct wi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct wi_softc	*sc = FUNC2(dev);
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);
	if (sc->wi_bus_type != WI_BUS_PCI_NATIVE) {
		FUNC1(sc);
		return (0);
	}
	if (ic->ic_nrunning > 0)
		FUNC3(sc);
	FUNC1(sc);
	return (0);
}