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
typedef  int /*<<< orphan*/  uint32_t ;
struct iwn_softc {int calib_cnt; int /*<<< orphan*/  calib_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  IWN_CMD_GET_STATISTICS ; 
 int /*<<< orphan*/  IWN_DEBUG_CALIBRATE ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct iwn_softc *sc = arg;

	FUNC1(sc);

	/* Force automatic TX power calibration every 60 secs. */
	if (++sc->calib_cnt >= 120) {
		uint32_t flags = 0;

		FUNC0(sc, IWN_DEBUG_CALIBRATE, "%s\n",
		    "sending request for statistics");
		(void)FUNC3(sc, IWN_CMD_GET_STATISTICS, &flags,
		    sizeof flags, 1);
		sc->calib_cnt = 0;
	}
	FUNC2(&sc->calib_to, FUNC4(500), iwn_calib_timeout,
	    sc);
}