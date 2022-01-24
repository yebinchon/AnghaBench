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
struct ipmi_request {scalar_t__ ir_error; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ipmi_request*) ; 
 struct ipmi_request* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct opal_ipmi_softc*,struct ipmi_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct opal_ipmi_softc *sc = arg;
	struct ipmi_request *req;
	int i, ok;

	FUNC2(&sc->ipmi);
	while ((req = FUNC5(&sc->ipmi)) != NULL) {
		FUNC3(&sc->ipmi);
		ok = 0;
		for (i = 0; i < 3 && !ok; i++) {
			FUNC0(&sc->ipmi);
			ok = FUNC7(sc, req, MAX_TIMEOUT);
			FUNC1(&sc->ipmi);
		}
		if (ok)
			req->ir_error = 0;
		else
			req->ir_error = EIO;
		FUNC2(&sc->ipmi);
		FUNC4(&sc->ipmi, req);
	}
	FUNC3(&sc->ipmi);
	FUNC6(0);
}