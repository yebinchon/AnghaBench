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
struct ipmi_softc {int dummy; } ;
struct ipmi_request {struct ipmi_device* ir_owner; } ;
struct ipmi_device {struct ipmi_request ipmi_requests; scalar_t__ ipmi_closing; int /*<<< orphan*/  ipmi_select; int /*<<< orphan*/  ipmi_completed_requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ipmi_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ir_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_request*) ; 

void
FUNC4(struct ipmi_softc *sc, struct ipmi_request *req)
{
	struct ipmi_device *dev;

	FUNC0(sc);

	/*
	 * Anonymous requests (from inside the driver) always have a
	 * waiter that we awaken.
	 */
	if (req->ir_owner == NULL)
		FUNC3(req);
	else {
		dev = req->ir_owner;
		FUNC1(&dev->ipmi_completed_requests, req, ir_link);
		FUNC2(&dev->ipmi_select);
		if (dev->ipmi_closing)
			FUNC3(&dev->ipmi_requests);
	}
}