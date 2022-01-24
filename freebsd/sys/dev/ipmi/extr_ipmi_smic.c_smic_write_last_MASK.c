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
typedef  scalar_t__ u_char ;
struct ipmi_softc {int /*<<< orphan*/  ipmi_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SMIC_CC_SMS_WR_END ; 
 int /*<<< orphan*/  SMIC_CTL_STS ; 
 int /*<<< orphan*/  SMIC_DATA ; 
 scalar_t__ SMIC_SC_SMS_WR_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipmi_softc*) ; 

__attribute__((used)) static int
FUNC6(struct ipmi_softc *sc, u_char data)
{
	u_char error, status;

	FUNC5(sc);
	FUNC1(sc, SMIC_CTL_STS, SMIC_CC_SMS_WR_END);
	FUNC1(sc, SMIC_DATA, data);
	FUNC3(sc);
	FUNC4(sc);
	status = FUNC0(sc, SMIC_CTL_STS);
	if (status != SMIC_SC_SMS_WR_END) {
		error = FUNC0(sc, SMIC_DATA);
		FUNC2(sc->ipmi_dev, "SMIC: Write did not end %02x\n",
		    error);
		return (0);
	}
	return (1);
}