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
struct netmap_priv_d {int /*<<< orphan*/  np_kloop_state; int /*<<< orphan*/ * np_si; struct netmap_adapter* np_na; int /*<<< orphan*/ * np_nifp; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NM_SYNC_KLOOP_RUNNING ; 
 int /*<<< orphan*/  NM_SYNC_KLOOP_STOPPING ; 
 size_t NR_RX ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int
FUNC7(struct netmap_priv_d *priv)
{
	struct netmap_adapter *na;
	bool running = true;
	int err = 0;

	if (priv->np_nifp == NULL) {
		return ENXIO;
	}
	FUNC3(); /* make sure following reads are not from cache */

	na = priv->np_na;
	if (!FUNC4(na)) {
		return ENXIO;
	}

	/* Set the kloop stopping flag. */
	FUNC0();
	priv->np_kloop_state |= NM_SYNC_KLOOP_STOPPING;
	FUNC1();

	/* Send a notification to the kloop, in case it is blocked in
	 * schedule_timeout(). We can use either RX or TX, because the
	 * kloop is waiting on both. */
	FUNC5(priv->np_si[NR_RX]);

	/* Wait for the kloop to actually terminate. */
	while (running) {
		FUNC6(1000, 1500);
		FUNC0();
		running = (FUNC2(priv->np_kloop_state)
				& NM_SYNC_KLOOP_RUNNING);
		FUNC1();
	}

	return err;
}