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
struct tid_info {int /*<<< orphan*/  hftid_lock; } ;
struct filter_entry {int dummy; } ;
struct adapter {struct tid_info tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filter_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  link_tid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct adapter *sc, struct filter_entry *f)
{
#ifdef INVARIANTS
	struct tid_info *t = &sc->tids;

	mtx_assert(&t->hftid_lock, MA_OWNED);
#endif

	FUNC0(f, link_tid);
}