#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_baudrate; int /*<<< orphan*/  if_xname; TYPE_5__ if_snd; scalar_t__ if_hdrlen; scalar_t__ if_addrlen; int /*<<< orphan*/  if_type; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_output; TYPE_1__* if_softc; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
struct TYPE_7__ {int /*<<< orphan*/  unit; int /*<<< orphan*/  node; struct ifnet* ifp; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_NULL ; 
 int ENOMEM ; 
 int IFF_MULTICAST ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  IFT_PROPVIRTUAL ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  M_NETGRAPH_IFACE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_IFACE_IFACE_NAME ; 
 int /*<<< orphan*/  NG_IFACE_MTU_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  V_ng_iface_unit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ng_iface_ioctl ; 
 int /*<<< orphan*/  ng_iface_output ; 
 int /*<<< orphan*/  ng_iface_start ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC13(node_p node)
{
	struct ifnet *ifp;
	priv_p priv;

	/* Allocate node and interface private structures */
	priv = FUNC10(sizeof(*priv), M_NETGRAPH_IFACE, M_WAITOK | M_ZERO);
	ifp = FUNC6(IFT_PROPVIRTUAL);
	if (ifp == NULL) {
		FUNC5(priv, M_NETGRAPH_IFACE);
		return (ENOMEM);
	}

	FUNC12(&priv->lock, "ng_iface private rmlock");

	/* Link them together */
	ifp->if_softc = priv;
	priv->ifp = ifp;

	/* Get an interface unit number */
	priv->unit = FUNC3(V_ng_iface_unit);

	/* Link together node and private info */
	FUNC2(node, priv);
	priv->node = node;

	/* Initialize interface structure */
	FUNC8(ifp, NG_IFACE_IFACE_NAME, priv->unit);
	ifp->if_output = ng_iface_output;
	ifp->if_start = ng_iface_start;
	ifp->if_ioctl = ng_iface_ioctl;
	ifp->if_mtu = NG_IFACE_MTU_DEFAULT;
	ifp->if_flags = (IFF_SIMPLEX|IFF_POINTOPOINT|IFF_NOARP|IFF_MULTICAST);
	ifp->if_type = IFT_PROPVIRTUAL;		/* XXX */
	ifp->if_addrlen = 0;			/* XXX */
	ifp->if_hdrlen = 0;			/* XXX */
	ifp->if_baudrate = 64000;		/* XXX */
	FUNC0(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
	FUNC1(&ifp->if_snd);

	/* Give this node the same name as the interface (if possible) */
	if (FUNC11(node, ifp->if_xname) != 0)
		FUNC9(LOG_WARNING, "%s: can't acquire netgraph name\n",
		    ifp->if_xname);

	/* Attach the interface */
	FUNC7(ifp);
	FUNC4(ifp, DLT_NULL, sizeof(u_int32_t));

	/* Done */
	return (0);
}