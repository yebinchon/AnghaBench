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
struct adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  ADAP_ERR ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  LOG_ALERT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct adapter*) ; 
 int /*<<< orphan*/  delayed_panic ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fatal_callout ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ t4_panic_on_fatal_err ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 

void
FUNC7(struct adapter *sc, bool fw_error)
{

	FUNC6(sc);
	FUNC5(LOG_ALERT, "%s: encountered fatal error, adapter stopped.\n",
	    FUNC4(sc->dev));
	if (fw_error) {
		FUNC2(sc);
		sc->flags |= ADAP_ERR;
	} else {
		FUNC0(sc);
		sc->flags |= ADAP_ERR;
		FUNC1(sc);
	}

	if (t4_panic_on_fatal_err) {
		FUNC5(LOG_ALERT, "%s: panic on fatal error after 30s",
		    FUNC4(sc->dev));
		FUNC3(&fatal_callout, hz * 30, delayed_panic, sc);
	}
}