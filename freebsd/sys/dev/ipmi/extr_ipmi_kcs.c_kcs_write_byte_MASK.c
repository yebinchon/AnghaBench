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
 int /*<<< orphan*/  KCS_DATA ; 
 int KCS_STATUS_IBF ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ KCS_STATUS_STATE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_softc*,int) ; 
 int FUNC3 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ipmi_softc *sc, u_char data)
{
	int status;

	/* Data to Data */
	FUNC1(sc, KCS_DATA, data);

	/* Wait for IBF = 0 */
	status = FUNC3(sc, 0);
	if (status & KCS_STATUS_IBF)
		return (0);

	if (FUNC0(status) != KCS_STATUS_STATE_WRITE)
		return (0);

	/* Clear OBF */
	FUNC2(sc, status);
	return (1);
}