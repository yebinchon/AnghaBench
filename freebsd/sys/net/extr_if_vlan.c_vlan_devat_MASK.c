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
typedef  int /*<<< orphan*/  uint16_t ;
struct ifvlantrunk {int dummy; } ;
struct ifvlan {struct ifnet* ifv_ifp; } ;
struct ifnet {struct ifvlantrunk* if_vlantrunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct ifvlan* FUNC1 (struct ifvlantrunk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ifnet *
FUNC2(struct ifnet *ifp, uint16_t vid)
{
	struct ifvlantrunk *trunk;
	struct ifvlan *ifv;

	FUNC0();

	trunk = ifp->if_vlantrunk;
	if (trunk == NULL)
		return (NULL);
	ifp = NULL;
	ifv = FUNC1(trunk, vid);
	if (ifv)
		ifp = ifv->ifv_ifp;
	return (ifp);
}