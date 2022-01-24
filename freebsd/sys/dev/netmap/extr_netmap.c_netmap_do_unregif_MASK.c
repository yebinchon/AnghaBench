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
struct netmap_priv_d {int /*<<< orphan*/ * np_nifp; struct netmap_adapter* np_na; } ;
struct netmap_adapter {scalar_t__ active_fds; int na_flags; int num_host_tx_rings; int num_host_rx_rings; int /*<<< orphan*/  (* nm_krings_delete ) (struct netmap_adapter*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  (* nm_register ) (struct netmap_adapter*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int NAF_HOST_RINGS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int NM_DEBUG_ON ; 
 int netmap_debug ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_priv_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct netmap_priv_d*) ; 
 scalar_t__ FUNC7 (struct netmap_priv_d*) ; 
 scalar_t__ FUNC8 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct netmap_adapter*) ; 

void
FUNC13(struct netmap_priv_d *priv)
{
	struct netmap_adapter *na = priv->np_na;

	FUNC0();
	na->active_fds--;
	/* unset nr_pending_mode and possibly release exclusive mode */
	FUNC1(priv);

#ifdef	WITH_MONITOR
	/* XXX check whether we have to do something with monitor
	 * when rings change nr_mode. */
	if (na->active_fds <= 0) {
		/* walk through all the rings and tell any monitor
		 * that the port is going to exit netmap mode
		 */
		netmap_monitor_stop(na);
	}
#endif

	if (na->active_fds <= 0 || FUNC7(priv)) {
		na->nm_register(na, 0);
	}

	/* delete rings and buffers that are no longer needed */
	FUNC4(na);

	if (na->active_fds <= 0) {	/* last instance */
		/*
		 * (TO CHECK) We enter here
		 * when the last reference to this file descriptor goes
		 * away. This means we cannot have any pending poll()
		 * or interrupt routine operating on the structure.
		 * XXX The file may be closed in a thread while
		 * another thread is using it.
		 * Linux keeps the file opened until the last reference
		 * by any outstanding ioctl/poll or mmap is gone.
		 * FreeBSD does not track mmap()s (but we do) and
		 * wakes up any sleeping poll(). Need to check what
		 * happens if the close() occurs while a concurrent
		 * syscall is running.
		 */
		if (netmap_debug & NM_DEBUG_ON)
			FUNC10("deleting last instance for %s", na->name);

		if (FUNC8(na)) {
			FUNC9("BUG: netmap on while going to delete the krings");
		}

		na->nm_krings_delete(na);

		/* restore the default number of host tx and rx rings */
		if (na->na_flags & NAF_HOST_RINGS) {
			na->num_host_tx_rings = 1;
			na->num_host_rx_rings = 1;
		} else {
			na->num_host_tx_rings = 0;
			na->num_host_rx_rings = 0;
		}
	}

	/* possibily decrement counter of tx_si/rx_si users */
	FUNC6(priv);
	/* delete the nifp */
	FUNC3(na, priv->np_nifp);
	/* drop the allocator */
	FUNC2(na);
	/* mark the priv as unregistered */
	priv->np_na = NULL;
	priv->np_nifp = NULL;
}