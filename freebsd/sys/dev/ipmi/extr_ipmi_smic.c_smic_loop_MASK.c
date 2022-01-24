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
struct ipmi_request {scalar_t__ ir_error; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_softc*,struct ipmi_request*) ; 
 struct ipmi_request* FUNC5 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ipmi_softc*,struct ipmi_request*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ipmi_softc *sc = arg;
	struct ipmi_request *req;
	int i, ok;

	FUNC2(sc);
	while ((req = FUNC5(sc)) != NULL) {
		FUNC3(sc);
		ok = 0;
		for (i = 0; i < 3 && !ok; i++) {
			FUNC0(sc);
			ok = FUNC7(sc, req);
			FUNC1(sc);
		}
		if (ok)
			req->ir_error = 0;
		else
			req->ir_error = EIO;
		FUNC2(sc);
		FUNC4(sc, req);
	}
	FUNC3(sc);
	FUNC6(0);
}