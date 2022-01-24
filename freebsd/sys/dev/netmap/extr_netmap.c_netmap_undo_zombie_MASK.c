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
struct netmap_adapter {int na_flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct netmap_adapter* FUNC0 (struct ifnet*) ; 
 int NAF_ZOMBIE ; 
 int /*<<< orphan*/  NM_KR_LOCKED ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ifnet *ifp)
{
	if (FUNC1(ifp)) {
		struct netmap_adapter *na = FUNC0(ifp);
		if (na->na_flags & NAF_ZOMBIE) {
			FUNC2(na, NM_KR_LOCKED);
			na->na_flags &= ~NAF_ZOMBIE;
			FUNC2(na, 0);
		}
	}
}