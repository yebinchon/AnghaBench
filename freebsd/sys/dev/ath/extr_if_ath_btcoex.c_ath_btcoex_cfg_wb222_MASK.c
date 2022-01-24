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
struct ath_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct ath_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct ath_softc *sc)
{

	FUNC1(sc->sc_dev, "Enabling WB222 BTCOEX\n");
	/* XXX from ath9k */
	return (FUNC0(sc, 0x2201, 1));
}