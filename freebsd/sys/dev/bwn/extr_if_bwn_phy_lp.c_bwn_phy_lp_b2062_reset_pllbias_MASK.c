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
struct TYPE_2__ {scalar_t__ chip_id; } ;
struct bwn_softc {TYPE_1__ sc_cid; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ BHND_CHIPID_BCM5354 ; 
 int /*<<< orphan*/  BWN_B2062_N_COM1 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL2 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;

	FUNC0(mac, BWN_B2062_S_RFPLLCTL2, 0xff);
	FUNC1(20);
	if (sc->sc_cid.chip_id == BHND_CHIPID_BCM5354) {
		FUNC0(mac, BWN_B2062_N_COM1, 4);
		FUNC0(mac, BWN_B2062_S_RFPLLCTL2, 4);
	} else {
		FUNC0(mac, BWN_B2062_S_RFPLLCTL2, 0);
	}
	FUNC1(5);
}