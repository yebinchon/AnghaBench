#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct sppp {int dummy; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; TYPE_1__* if_softc; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_8__ {int /*<<< orphan*/  if_xname; } ;
struct TYPE_7__ {int /*<<< orphan*/  unit; int /*<<< orphan*/  node; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_NULL ; 
 int ENOSPC ; 
 int IFF_MULTICAST ; 
 int IFF_POINTOPOINT ; 
 struct sppp* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  IFT_PPP ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  M_NETGRAPH_SPPP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  NG_SPPP_IFACE_NAME ; 
 TYPE_3__* FUNC2 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ng_sppp_ioctl ; 
 int /*<<< orphan*/  ng_sppp_start ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC13 (node_p node)
{
	struct sppp *pp;
	struct ifnet *ifp;
	priv_p priv;

	/* Allocate node and interface private structures */
	priv = FUNC9(sizeof(*priv), M_NETGRAPH_SPPP, M_WAITOK | M_ZERO);

	ifp = FUNC5(IFT_PPP);
	if (ifp == NULL) {
		FUNC4 (priv, M_NETGRAPH_SPPP);
		return (ENOSPC);
	}
	pp = FUNC0(ifp);

	/* Link them together */
	ifp->if_softc = priv;
	priv->ifp = ifp;

	/* Get an interface unit number */
	FUNC11(&priv->unit);

	/* Link together node and private info */
	FUNC1 (node, priv);
	priv->node = node;

	/* Initialize interface structure */
	FUNC7 (FUNC2(pp), NG_SPPP_IFACE_NAME, priv->unit);
	ifp->if_start = ng_sppp_start;
	ifp->if_ioctl = ng_sppp_ioctl;
	ifp->if_flags = (IFF_POINTOPOINT|IFF_MULTICAST);

	/* Give this node the same name as the interface (if possible) */
	if (FUNC10(node, FUNC2(pp)->if_xname) != 0)
		FUNC8 (LOG_WARNING, "%s: can't acquire netgraph name\n",
		    FUNC2(pp)->if_xname);

	/* Attach the interface */
	FUNC12 (ifp);
	FUNC6 (ifp);
	FUNC3 (ifp, DLT_NULL, sizeof(u_int32_t));

	/* Done */
	return (0);
}