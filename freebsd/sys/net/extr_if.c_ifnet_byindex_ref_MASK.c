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
typedef  int /*<<< orphan*/  u_short ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_DYING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 

struct ifnet *
FUNC3(u_short idx)
{
	struct ifnet *ifp;

	FUNC0();

	ifp = FUNC2(idx);
	if (ifp == NULL || (ifp->if_flags & IFF_DYING))
		return (NULL);
	FUNC1(ifp);
	return (ifp);
}