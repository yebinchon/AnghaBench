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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_DEBUG_BTCOEX ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  HAL_MCI_STATE_BT ; 
 int /*<<< orphan*/  HAL_MCI_STATE_SET_BT_CAL_START ; 
 int /*<<< orphan*/  MCI_BT_AWAKE ; 
 int /*<<< orphan*/  MCI_BT_CAL ; 
#define  MCI_GPM_BT_CAL_DONE 130 
#define  MCI_GPM_BT_CAL_GRANT 129 
#define  MCI_GPM_BT_CAL_REQ 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCI_GPM_WLAN_CAL_DONE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ath_softc *sc, uint8_t opcode,
    uint8_t *rx_payload)
{
	uint32_t payload[4] = {0, 0, 0, 0};

	switch (opcode) {
	case MCI_GPM_BT_CAL_REQ:
		FUNC0(sc, ATH_DEBUG_BTCOEX, "(MCI) receive BT_CAL_REQ\n");
		if (FUNC4(sc->sc_ah, HAL_MCI_STATE_BT,
		    NULL) == MCI_BT_AWAKE) {
			FUNC4(sc->sc_ah,
			    HAL_MCI_STATE_SET_BT_CAL_START, NULL);
			FUNC2(sc, 1000, 1000);
		} else {
			FUNC0(sc, ATH_DEBUG_BTCOEX,
			    "(MCI) State mismatches: %d\n",
			    FUNC4(sc->sc_ah,
			    HAL_MCI_STATE_BT, NULL));
		}
		break;
	case MCI_GPM_BT_CAL_DONE:
		FUNC0(sc, ATH_DEBUG_BTCOEX, "(MCI) receive BT_CAL_DONE\n");
		if (FUNC4(sc->sc_ah, HAL_MCI_STATE_BT,
		    NULL) == MCI_BT_CAL) {
			FUNC0(sc, ATH_DEBUG_BTCOEX,
			    "(MCI) ERROR ILLEGAL!\n");
		} else {
			FUNC0(sc, ATH_DEBUG_BTCOEX,
			    "(MCI) BT not in CAL state.\n");
		}
		break;
	case MCI_GPM_BT_CAL_GRANT:
		FUNC0(sc, ATH_DEBUG_BTCOEX, "(MCI) receive BT_CAL_GRANT\n");
		/* Send WLAN_CAL_DONE for now */
		FUNC0(sc, ATH_DEBUG_BTCOEX, "(MCI) Send WLAN_CAL_DONE\n");
		FUNC1(payload, MCI_GPM_WLAN_CAL_DONE);
		FUNC3(sc, &payload[0]);
		break;
	default:
		FUNC0(sc, ATH_DEBUG_BTCOEX,
		    "(MCI) Unknown GPM CAL message.\n");
		break;
	}
}