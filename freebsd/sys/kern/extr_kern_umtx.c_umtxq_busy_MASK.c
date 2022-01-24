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
struct umtxq_chain {int uc_busy; int /*<<< orphan*/  uc_waiters; int /*<<< orphan*/  uc_lock; } ;
struct umtx_key {int dummy; } ;

/* Variables and functions */
 int BUSY_SPINS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct umtxq_chain*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int smp_cpus ; 
 struct umtxq_chain* FUNC3 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_key*) ; 

__attribute__((used)) static inline void
FUNC6(struct umtx_key *key)
{
	struct umtxq_chain *uc;

	uc = FUNC3(key);
	FUNC2(&uc->uc_lock, MA_OWNED);
	if (uc->uc_busy) {
#ifdef SMP
		if (smp_cpus > 1) {
			int count = BUSY_SPINS;
			if (count > 0) {
				umtxq_unlock(key);
				while (uc->uc_busy && --count > 0)
					cpu_spinwait();
				umtxq_lock(key);
			}
		}
#endif
		while (uc->uc_busy) {
			uc->uc_waiters++;
			FUNC1(uc, &uc->uc_lock, 0, "umtxqb", 0);
			uc->uc_waiters--;
		}
	}
	uc->uc_busy = 1;
}