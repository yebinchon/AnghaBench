#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {scalar_t__ if_bridge; } ;
struct ether_header {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,struct mbuf*) ; 
 struct mbuf* FUNC9 (struct mbuf*,int) ; 

__attribute__((used)) static int
FUNC10(hook_p hook, item_p item)
{
	struct epoch_tracker et;
	struct mbuf *m;
	const node_p node = FUNC6(hook);
	const priv_p priv = FUNC7(node);
	struct ifnet *ifp = priv->ifp;

	FUNC3(item, m);
	FUNC4(item);

	/* Check length and pull off header */
	if (m->m_pkthdr.len < sizeof(struct ether_header)) {
		FUNC5(m);
		return (EINVAL);
	}
	if (m->m_len < sizeof(struct ether_header) &&
	    (m = FUNC9(m, sizeof(struct ether_header))) == NULL)
		return (ENOBUFS);

	m->m_pkthdr.rcvif = ifp;

	/* Pass the packet to the bridge, it may come back to us */
	if (ifp->if_bridge) {
		FUNC0(ifp, m);
		if (m == NULL)
			return (0);
	}

	/* Route packet back in */
	FUNC1(et);
	FUNC8(ifp, m);
	FUNC2(et);
	return (0);
}