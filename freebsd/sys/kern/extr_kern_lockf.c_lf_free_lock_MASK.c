#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sx {int dummy; } ;
struct lockf_entry {scalar_t__ lf_refs; size_t lo_hash; scalar_t__ lo_refs; int lf_flags; int /*<<< orphan*/ * lf_vnode; scalar_t__ lo_vertex; int /*<<< orphan*/  lf_inedges; int /*<<< orphan*/  lf_outedges; struct lockf_entry* lf_owner; } ;
struct lock_owner {scalar_t__ lf_refs; size_t lo_hash; scalar_t__ lo_refs; int lf_flags; int /*<<< orphan*/ * lf_vnode; scalar_t__ lo_vertex; int /*<<< orphan*/  lf_inedges; int /*<<< orphan*/  lf_outedges; struct lock_owner* lf_owner; } ;
struct TYPE_2__ {struct sx lock; } ;

/* Variables and functions */
 int F_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LOCKF ; 
 int /*<<< orphan*/  FUNC3 (struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* lf_lock_owners ; 
 int /*<<< orphan*/  lf_owner_graph ; 
 struct sx lf_owner_graph_lock ; 
 int /*<<< orphan*/  lo_link ; 
 int lockf_debug ; 
 int /*<<< orphan*/  FUNC5 (char*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct sx*) ; 
 int /*<<< orphan*/  FUNC7 (struct sx*) ; 
 int /*<<< orphan*/  FUNC8 (struct sx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct lockf_entry *lock)
{
	struct sx *chainlock;

	FUNC0(lock->lf_refs > 0, ("lockf_entry negative ref count %p", lock));
	if (--lock->lf_refs > 0)
		return (0);
	/*
	 * Adjust the lock_owner reference count and
	 * reclaim the entry if this is the last lock
	 * for that owner.
	 */
	struct lock_owner *lo = lock->lf_owner;
	if (lo) {
		FUNC0(FUNC1(&lock->lf_outedges),
		    ("freeing lock with dependencies"));
		FUNC0(FUNC1(&lock->lf_inedges),
		    ("freeing lock with dependants"));
		chainlock = &lf_lock_owners[lo->lo_hash].lock;
		FUNC7(chainlock);
		FUNC0(lo->lo_refs > 0, ("lock owner refcount"));
		lo->lo_refs--;
		if (lo->lo_refs == 0) {
#ifdef LOCKF_DEBUG
			if (lockf_debug & 1)
				printf("lf_free_lock: freeing lock owner %p\n",
				    lo);
#endif
			if (lo->lo_vertex) {
				FUNC7(&lf_owner_graph_lock);
				FUNC4(&lf_owner_graph,
				    lo->lo_vertex);
				FUNC8(&lf_owner_graph_lock);
			}
			FUNC2(lo, lo_link);
			FUNC3(lo, M_LOCKF);
#ifdef LOCKF_DEBUG
			if (lockf_debug & 4)
				printf("Freed lock owner %p\n", lo);
#endif
		}
		FUNC6(chainlock);
	}
	if ((lock->lf_flags & F_REMOTE) && lock->lf_vnode) {
		FUNC9(lock->lf_vnode);
		lock->lf_vnode = NULL;
	}
#ifdef LOCKF_DEBUG
	if (lockf_debug & 4)
		printf("Freed lock %p\n", lock);
#endif
	FUNC3(lock, M_LOCKF);
	return (1);
}