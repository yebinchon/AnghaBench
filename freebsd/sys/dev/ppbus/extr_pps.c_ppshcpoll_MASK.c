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
struct pps_data {int busy; int lastdata; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * pps; int /*<<< orphan*/  ppbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int /*<<< orphan*/  PPS_CAPTURECLEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),struct pps_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct pps_data *sc = arg;
	int i, j, k, l;

	FUNC0(sc->busy & ~1, ("pps polling w/o opened devices"));
	i = FUNC2(sc->ppbus);
	if (i == sc->lastdata)
		return;
	l = sc->lastdata ^ i;
	k = 1;
	for (j = 1; j < 9; j ++) {
		if (l & k) {
			FUNC3(&sc->pps[j]);
			FUNC4(&sc->pps[j],
			    i & k ? PPS_CAPTUREASSERT : PPS_CAPTURECLEAR);
		}
		k += k;
	}
	sc->lastdata = i;
	FUNC1(&sc->timeout, 1, ppshcpoll, sc);
}