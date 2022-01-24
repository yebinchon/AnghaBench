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
struct opal_ipmi_softc {int /*<<< orphan*/  ipmi; } ;
struct ipmi_softc {int dummy; } ;
struct ipmi_request {int ir_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct opal_ipmi_softc*,struct ipmi_request*,int) ; 

__attribute__((used)) static int
FUNC3(struct ipmi_softc *isc, struct ipmi_request *req,
    int timo)
{
	struct opal_ipmi_softc *sc = (struct opal_ipmi_softc *)isc;
	int i, err;

	for (i = 0; i < 3; i++) {
		FUNC0(&sc->ipmi);
		err = FUNC2(sc, req, timo);
		FUNC1(&sc->ipmi);
		if (err == 0)
			break;
	}

	req->ir_error = err;

	return (err);
}