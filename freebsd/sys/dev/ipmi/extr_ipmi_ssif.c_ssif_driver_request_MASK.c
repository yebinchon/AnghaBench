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
struct ipmi_softc {int /*<<< orphan*/  ipmi_requests_lock; } ;
struct ipmi_request {int ir_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int FUNC2 (struct ipmi_softc*,struct ipmi_request*) ; 
 int FUNC3 (struct ipmi_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct ipmi_softc *sc, struct ipmi_request *req, int timo)
{
	int error;

	FUNC0(sc);
	error = FUNC2(sc, req);
	if (error == 0)
		error = FUNC3(req, &sc->ipmi_requests_lock, 0, "ipmireq",
		    timo);
	if (error == 0)
		error = req->ir_error;
	FUNC1(sc);
	return (error);
}