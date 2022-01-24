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
struct ipmi_request {scalar_t__ ir_error; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_softc*,struct ipmi_request*) ; 
 struct ipmi_request* FUNC4 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct ipmi_softc*,struct ipmi_request*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ipmi_softc *sc = arg;
	struct ipmi_request *req;
	int i, ok;

	FUNC0(sc);
	while ((req = FUNC4(sc)) != NULL) {
		FUNC1(sc);
		ok = 0;
		for (i = 0; i < 5; i++) {
			ok = FUNC7(sc, req);
			if (ok)
				break;

			/* Wait 60 ms between retries. */
			FUNC6("retry", 60 * hz / 1000);
#ifdef SSIF_RETRY_DEBUG
			device_printf(sc->ipmi_dev,
			    "SSIF: Retrying request (%d)\n", i + 1);
#endif
		}
		if (ok)
			req->ir_error = 0;
		else
			req->ir_error = EIO;
		FUNC0(sc);
		FUNC3(sc, req);
		FUNC1(sc);

		/* Enforce 10ms between requests. */
		FUNC6("delay", hz / 100);

		FUNC0(sc);
	}
	FUNC1(sc);
	FUNC5(0);
}