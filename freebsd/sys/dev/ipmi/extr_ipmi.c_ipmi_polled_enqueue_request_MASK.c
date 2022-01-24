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
struct ipmi_softc {int /*<<< orphan*/  ipmi_request_added; int /*<<< orphan*/  ipmi_pending_requests; } ;
struct ipmi_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ipmi_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ir_link ; 

int
FUNC3(struct ipmi_softc *sc, struct ipmi_request *req)
{

	FUNC0(sc);

	FUNC1(&sc->ipmi_pending_requests, req, ir_link);
	FUNC2(&sc->ipmi_request_added);
	return (0);
}