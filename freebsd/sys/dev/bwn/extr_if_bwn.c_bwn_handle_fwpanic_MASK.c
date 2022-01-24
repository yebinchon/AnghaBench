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
typedef  scalar_t__ uint16_t ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_FWPANIC_REASON_REG ; 
 scalar_t__ BWN_FWPANIC_RESTART ; 
 int /*<<< orphan*/  BWN_SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,char*) ; 
 scalar_t__ FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	uint16_t reason;

	reason = FUNC1(mac, BWN_SCRATCH, BWN_FWPANIC_REASON_REG);
	FUNC2(sc->sc_dev,"fw panic (%u)\n", reason);

	if (reason == BWN_FWPANIC_RESTART)
		FUNC0(mac, "ucode panic");
}