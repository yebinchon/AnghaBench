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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ,struct mbuf*,struct label*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  ifnet_check_transmit ; 
 struct label* FUNC5 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 

int
FUNC6(struct ifnet *ifp, struct mbuf *m)
{
	struct label *label;
	int error, locked;

	FUNC4(m);

	if (mac_policy_count == 0)
		return (0);

	label = FUNC5(m);

	FUNC1(ifp, locked);
	FUNC3(ifnet_check_transmit, ifp, ifp->if_label, m,
	    label);
	FUNC0(ifnet_check_transmit, error, ifp, m);
	FUNC2(ifp, locked);

	return (error);
}