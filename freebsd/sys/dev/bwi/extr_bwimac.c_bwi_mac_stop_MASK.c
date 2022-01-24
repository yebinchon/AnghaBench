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
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int BWI_INTR_READY ; 
 int /*<<< orphan*/  BWI_MAC_INTR_STATUS ; 
 int /*<<< orphan*/  BWI_MAC_STATUS ; 
 int /*<<< orphan*/  BWI_MAC_STATUS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 
 int NRETRY ; 
 int FUNC3 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	int error, i;

	error = FUNC3(mac);
	if (error)
		return error;

	FUNC0(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_ENABLE);

	/* Flush pending bus write */
	FUNC1(sc, BWI_MAC_STATUS);

#define NRETRY	10000
	for (i = 0; i < NRETRY; ++i) {
		if (FUNC1(sc, BWI_MAC_INTR_STATUS) & BWI_INTR_READY)
			break;
		FUNC2(1);
	}
	if (i == NRETRY) {
		FUNC4(sc->sc_dev, "can't stop MAC\n");
		return ETIMEDOUT;
	}
#undef NRETRY

	return 0;
}