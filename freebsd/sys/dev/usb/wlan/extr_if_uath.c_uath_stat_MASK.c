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
struct uath_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UATH_CMD_FLAG_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uath_softc*) ; 
 int /*<<< orphan*/  WDCMSG_TARGET_GET_STATS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct uath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct uath_softc *sc = arg;
	int error;

	FUNC0(sc);
	/*
	 * Send request for statistics asynchronously. The timer will be
	 * restarted when we'll get the stats notification.
	 */
	error = FUNC3(sc, WDCMSG_TARGET_GET_STATS, NULL, 0,
	    UATH_CMD_FLAG_ASYNC);
	if (error != 0) {
		FUNC2(sc->sc_dev,
		    "could not query stats, error %d\n", error);
	}
	FUNC1(sc);
}