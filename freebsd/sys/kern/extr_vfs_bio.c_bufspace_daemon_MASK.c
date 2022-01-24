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
struct bufdomain {scalar_t__ bd_bufspace; scalar_t__ bd_lobufspace; scalar_t__ bd_freebuffers; scalar_t__ bd_hifreebuffers; scalar_t__ bd_wanted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int PDROP ; 
 int PRIBIO ; 
 scalar_t__ SHUTDOWN_PRI_LAST ; 
 scalar_t__ FUNC4 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct bufdomain*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bufdomain*) ; 
 int /*<<< orphan*/  curthread ; 
 int hz ; 
 int /*<<< orphan*/  kthread_shutdown ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct bufdomain *bd;

	FUNC3(shutdown_pre_sync, kthread_shutdown, curthread,
	    SHUTDOWN_PRI_LAST + 100);

	bd = arg;
	for (;;) {
		FUNC8();

		/*
		 * Free buffers from the clean queue until we meet our
		 * targets.
		 *
		 * Theory of operation:  The buffer cache is most efficient
		 * when some free buffer headers and space are always
		 * available to getnewbuf().  This daemon attempts to prevent
		 * the excessive blocking and synchronization associated
		 * with shortfall.  It goes through three phases according
		 * demand:
		 *
		 * 1)	The daemon wakes up voluntarily once per-second
		 *	during idle periods when the counters are below
		 *	the wakeup thresholds (bufspacethresh, lofreebuffers).
		 *
		 * 2)	The daemon wakes up as we cross the thresholds
		 *	ahead of any potential blocking.  This may bounce
		 *	slightly according to the rate of consumption and
		 *	release.
		 *
		 * 3)	The daemon and consumers are starved for working
		 *	clean buffers.  This is the 'bufspace' sleep below
		 *	which will inefficiently trade bufs with bqrelse
		 *	until we return to condition 2.
		 */
		while (bd->bd_bufspace > bd->bd_lobufspace ||
		    bd->bd_freebuffers < bd->bd_hifreebuffers) {
			if (FUNC6(bd, false) != 0) {
				if (FUNC4(bd))
					continue;
				/*
				 * Speedup dirty if we've run out of clean
				 * buffers.  This is possible in particular
				 * because softdep may held many bufs locked
				 * pending writes to other bufs which are
				 * marked for delayed write, exhausting
				 * clean space until they are written.
				 */
				FUNC5();
				FUNC0(bd);
				if (bd->bd_wanted) {
					FUNC10(&bd->bd_wanted, FUNC1(bd),
					    PRIBIO|PDROP, "bufspace", hz/10);
				} else
					FUNC2(bd);
			}
			FUNC9();
		}
		FUNC7(bd);
	}
}