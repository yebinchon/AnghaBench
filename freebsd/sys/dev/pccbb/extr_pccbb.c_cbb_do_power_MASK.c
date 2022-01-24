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
typedef  int uint32_t ;
struct cbb_softc {int /*<<< orphan*/ * exca; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CARD_3V_CARD ; 
 int CARD_5V_CARD ; 
 int /*<<< orphan*/  CARD_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CARD_XV_CARD ; 
 int CARD_YV_CARD ; 
 int /*<<< orphan*/  CBB_SOCKET_STATE ; 
 int CBB_STATE_POWER_CYCLE ; 
 int ENXIO ; 
 int /*<<< orphan*/  EXCA_PWRCTL ; 
 int /*<<< orphan*/  EXCA_PWRCTL_OE ; 
 int XV ; 
 int YV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cbb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t brdev)
{
	struct cbb_softc *sc = FUNC5(brdev);
	uint32_t voltage, curpwr;
	uint32_t status;

	/* Don't enable OE (output enable) until power stable */
	FUNC7(&sc->exca[0], EXCA_PWRCTL, EXCA_PWRCTL_OE);

	voltage = FUNC2(brdev);
	curpwr = FUNC1(brdev);
	status = FUNC3(sc, CBB_SOCKET_STATE);
	if ((status & CBB_STATE_POWER_CYCLE) && (voltage & curpwr))
		return 0;
	/* Prefer lowest voltage supported */
	FUNC4(brdev, CARD_OFF);
	if (voltage & CARD_YV_CARD)
		FUNC4(brdev, FUNC0(YV));
	else if (voltage & CARD_XV_CARD)
		FUNC4(brdev, FUNC0(XV));
	else if (voltage & CARD_3V_CARD)
		FUNC4(brdev, FUNC0(3));
	else if (voltage & CARD_5V_CARD)
		FUNC4(brdev, FUNC0(5));
	else {
		FUNC6(brdev, "Unknown card voltage\n");
		return (ENXIO);
	}
	return (0);
}