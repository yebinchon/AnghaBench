#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_8__ {int /*<<< orphan*/  if_vnet; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  unit; TYPE_2__* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_IFACE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ng_iface_unit ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(node_p node)
{
	const priv_p priv = FUNC2(node);

	/*
	 * The ifnet may be in a different vnet than the netgraph node, 
	 * hence we have to change the current vnet context here.
	 */
	FUNC1(priv->ifp->if_vnet);
	FUNC5(priv->ifp);
	FUNC8(priv->ifp);
	FUNC9(priv->ifp);
	FUNC0();
	priv->ifp = NULL;
	FUNC7(V_ng_iface_unit, priv->unit);
	FUNC10(&priv->lock);
	FUNC6(priv, M_NETGRAPH_IFACE);
	FUNC3(node, NULL);
	FUNC4(node);
	return (0);
}