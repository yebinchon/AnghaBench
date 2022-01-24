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
struct ifnet {int /*<<< orphan*/  if_epoch_ctx; int /*<<< orphan*/  if_refcount; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_vnet; int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DYING ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  if_destroy ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_epoch_preempt ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct ifnet *ifp)
{

	ifp->if_flags |= IFF_DYING;			/* XXX: Locking */

	FUNC1(ifp->if_vnet);
	FUNC2();
	FUNC4(ifp == FUNC7(ifp->if_index),
	    ("%s: freeing unallocated ifnet", ifp->if_xname));

	FUNC6(ifp->if_index);
	FUNC3();

	if (FUNC8(&ifp->if_refcount))
		FUNC5(net_epoch_preempt, &ifp->if_epoch_ctx, if_destroy);
	FUNC0();
}