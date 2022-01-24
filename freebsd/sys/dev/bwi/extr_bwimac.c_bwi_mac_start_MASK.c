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
struct bwi_softc {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_INTR_READY ; 
 int /*<<< orphan*/  BWI_MAC_INTR_STATUS ; 
 int /*<<< orphan*/  BWI_MAC_STATUS ; 
 int /*<<< orphan*/  BWI_MAC_STATUS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bwi_mac*) ; 

int
FUNC4(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;

	FUNC1(sc, BWI_MAC_STATUS, BWI_MAC_STATUS_ENABLE);
	FUNC2(sc, BWI_MAC_INTR_STATUS, BWI_INTR_READY);

	/* Flush pending bus writes */
	FUNC0(sc, BWI_MAC_STATUS);
	FUNC0(sc, BWI_MAC_INTR_STATUS);

	return FUNC3(mac);
}