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
struct umtxq_chain {scalar_t__ uc_busy; scalar_t__ uc_waiters; int /*<<< orphan*/  uc_lock; } ;
struct umtx_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct umtxq_chain* FUNC2 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct umtxq_chain*) ; 

__attribute__((used)) static inline void
FUNC4(struct umtx_key *key)
{
	struct umtxq_chain *uc;

	uc = FUNC2(key);
	FUNC1(&uc->uc_lock, MA_OWNED);
	FUNC0(uc->uc_busy != 0, ("not busy"));
	uc->uc_busy = 0;
	if (uc->uc_waiters)
		FUNC3(uc);
}