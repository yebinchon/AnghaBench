#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int /*<<< orphan*/  if_vnet; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_4__ {int /*<<< orphan*/  unit; int /*<<< orphan*/  media; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ng_eiface_unit ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet* const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet* const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(node_p node)
{
	const priv_p priv = FUNC2(node);
	struct ifnet *const ifp = priv->ifp;

	/*
	 * the ifnet may be in a different vnet than the netgraph node, 
	 * hence we have to change the current vnet context here.
	 */
	FUNC1(ifp->if_vnet);
	FUNC9(&priv->media);
	FUNC5(ifp);
	FUNC8(ifp);
	FUNC0();
	FUNC7(V_ng_eiface_unit, priv->unit);
	FUNC6(priv, M_NETGRAPH);
	FUNC3(node, NULL);
	FUNC4(node);
	return (0);
}