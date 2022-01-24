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
struct ipmi_softc {int /*<<< orphan*/  ipmi_pending_requests; scalar_t__ ipmi_detaching; int /*<<< orphan*/  ipmi_requests_lock; int /*<<< orphan*/  ipmi_request_added; } ;
struct ipmi_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ipmi_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ipmi_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ir_link ; 

struct ipmi_request *
FUNC5(struct ipmi_softc *sc)
{
	struct ipmi_request *req;

	FUNC0(sc);

	while (!sc->ipmi_detaching && FUNC1(&sc->ipmi_pending_requests))
		FUNC4(&sc->ipmi_request_added, &sc->ipmi_requests_lock);
	if (sc->ipmi_detaching)
		return (NULL);

	req = FUNC2(&sc->ipmi_pending_requests);
	FUNC3(&sc->ipmi_pending_requests, req, ir_link);
	return (req);
}