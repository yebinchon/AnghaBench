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
typedef  int /*<<< orphan*/  u_char ;
struct ipmi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KCS_DATA ; 
 int /*<<< orphan*/  KCS_DATA_IN_READ ; 
 int KCS_STATUS_OBF ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ KCS_STATUS_STATE_IDLE ; 
 scalar_t__ KCS_STATUS_STATE_READ ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ipmi_softc*,int) ; 

__attribute__((used)) static int
FUNC5(struct ipmi_softc *sc, u_char *data)
{
	int status;
	u_char dummy;

	/* Wait for IBF = 0 */
	status = FUNC3(sc, 0);

	/* Read State */
	if (FUNC1(status) == KCS_STATUS_STATE_READ) {

		/* Wait for OBF = 1 */
		status = FUNC4(sc, 1);
		if ((status & KCS_STATUS_OBF) == 0)
			return (0);

		/* Read Data_out */
		*data = FUNC0(sc, KCS_DATA);

		/* Write READ into Data_in */
		FUNC2(sc, KCS_DATA, KCS_DATA_IN_READ);
		return (1);
	}

	/* Idle State */
	if (FUNC1(status) == KCS_STATUS_STATE_IDLE) {

		/* Wait for OBF = 1*/
		status = FUNC4(sc, 1);
		if ((status & KCS_STATUS_OBF) == 0)
			return (0);

		/* Read Dummy */
		dummy = FUNC0(sc, KCS_DATA);
		return (2);
	}

	/* Error State */
	return (0);
}