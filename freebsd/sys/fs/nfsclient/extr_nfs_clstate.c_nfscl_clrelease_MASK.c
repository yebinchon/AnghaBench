#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nfslock_lock; } ;
struct nfsclclient {TYPE_1__ nfsc_lock; } ;

/* Variables and functions */
 int NFSV4LOCK_LOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nfsclclient *clp)
{

	if (clp->nfsc_lock.nfslock_lock & NFSV4LOCK_LOCK)
		FUNC1(&clp->nfsc_lock, 0);
	else
		FUNC0(&clp->nfsc_lock);
}