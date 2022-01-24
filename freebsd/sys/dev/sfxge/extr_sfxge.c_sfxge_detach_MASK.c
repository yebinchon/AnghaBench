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
struct sfxge_softc {int /*<<< orphan*/  ifnet; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct sfxge_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct sfxge_softc *sc;

	sc = FUNC0(dev);

	FUNC3(sc);

	/* Destroy the ifnet. */
	FUNC2(sc->ifnet);

	/* Tear down hardware. */
	FUNC1(sc);

	return (0);
}