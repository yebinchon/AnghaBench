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
struct ipmi_softc {int /*<<< orphan*/  ipmi_dev; } ;
struct ipmi_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPMI_APP_REQUEST ; 
 int /*<<< orphan*/  IPMI_RESET_WDOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ipmi_softc*,struct ipmi_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ipmi_softc *sc)
{
	struct ipmi_request *req;
	int error;

	FUNC1(req, FUNC0(IPMI_APP_REQUEST, 0),
	    IPMI_RESET_WDOG, 0, 0);
	error = FUNC3(sc, req, 0);
	if (error)
		FUNC2(sc->ipmi_dev, "Failed to reset watchdog\n");
	return (error);
}