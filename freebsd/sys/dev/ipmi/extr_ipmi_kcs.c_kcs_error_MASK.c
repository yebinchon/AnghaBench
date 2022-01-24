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
typedef  int u_char ;
struct ipmi_softc {int /*<<< orphan*/  ipmi_dev; } ;

/* Variables and functions */
 int FUNC0 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int KCS_CONTROL_GET_STATUS_ABORT ; 
 int /*<<< orphan*/  KCS_CTL_STS ; 
 int /*<<< orphan*/  KCS_DATA ; 
 int KCS_DATA_IN_READ ; 
 int KCS_STATUS_OBF ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ KCS_STATUS_STATE_IDLE ; 
 scalar_t__ KCS_STATUS_STATE_READ ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_softc*,int) ; 
 int FUNC5 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipmi_softc*,int) ; 

__attribute__((used)) static void
FUNC7(struct ipmi_softc *sc)
{
	int retry, status;
	u_char data;

	for (retry = 0; retry < 2; retry++) {

		/* Wait for IBF = 0 */
		status = FUNC5(sc, 0);

		/* ABORT */
		FUNC2(sc, KCS_CTL_STS, KCS_CONTROL_GET_STATUS_ABORT);

		/* Wait for IBF = 0 */
		status = FUNC5(sc, 0);

		/* Clear OBF */
		FUNC4(sc, status);

		if (status & KCS_STATUS_OBF) {
			data = FUNC0(sc, KCS_DATA);
			if (data != 0)
				FUNC3(sc->ipmi_dev,
				    "KCS Error Data %02x\n", data);
		}

		/* 0x00 to DATA_IN */
		FUNC2(sc, KCS_DATA, 0x00);

		/* Wait for IBF = 0 */
		status = FUNC5(sc, 0);

		if (FUNC1(status) == KCS_STATUS_STATE_READ) {

			/* Wait for OBF = 1 */
			status = FUNC6(sc, 1);

			/* Read error status */
			data = FUNC0(sc, KCS_DATA);
			if (data != 0 && (data != 0xff || bootverbose))
				FUNC3(sc->ipmi_dev, "KCS error: %02x\n",
				    data);

			/* Write READ into Data_in */
			FUNC2(sc, KCS_DATA, KCS_DATA_IN_READ);

			/* Wait for IBF = 0 */
			status = FUNC5(sc, 0);
		}

		/* IDLE STATE */
		if (FUNC1(status) == KCS_STATUS_STATE_IDLE) {
			/* Wait for OBF = 1 */
			status = FUNC6(sc, 1);

			/* Clear OBF */
			FUNC4(sc, status);
			return;
		}
	}
	FUNC3(sc->ipmi_dev, "KCS: Error retry exhausted\n");
}