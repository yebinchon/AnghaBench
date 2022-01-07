
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
struct sppp {int dummy; } ;
struct ifnet {int if_flags; int if_ioctl; int if_start; TYPE_1__* if_softc; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_8__ {int if_xname; } ;
struct TYPE_7__ {int unit; int node; struct ifnet* ifp; } ;


 int DLT_NULL ;
 int ENOSPC ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 struct sppp* IFP2SP (struct ifnet*) ;
 int IFT_PPP ;
 int LOG_WARNING ;
 int M_NETGRAPH_SPPP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 int NG_SPPP_IFACE_NAME ;
 TYPE_3__* SP2IFP (struct sppp*) ;
 int bpfattach (struct ifnet*,int ,int) ;
 int free (TYPE_1__*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (TYPE_3__*,int ,int ) ;
 int log (int ,char*,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 scalar_t__ ng_name_node (int ,int ) ;
 int ng_sppp_get_unit (int *) ;
 int ng_sppp_ioctl ;
 int ng_sppp_start ;
 int sppp_attach (struct ifnet*) ;

__attribute__((used)) static int
ng_sppp_constructor (node_p node)
{
 struct sppp *pp;
 struct ifnet *ifp;
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH_SPPP, M_WAITOK | M_ZERO);

 ifp = if_alloc(IFT_PPP);
 if (ifp == ((void*)0)) {
  free (priv, M_NETGRAPH_SPPP);
  return (ENOSPC);
 }
 pp = IFP2SP(ifp);


 ifp->if_softc = priv;
 priv->ifp = ifp;


 ng_sppp_get_unit(&priv->unit);


 NG_NODE_SET_PRIVATE (node, priv);
 priv->node = node;


 if_initname (SP2IFP(pp), NG_SPPP_IFACE_NAME, priv->unit);
 ifp->if_start = ng_sppp_start;
 ifp->if_ioctl = ng_sppp_ioctl;
 ifp->if_flags = (IFF_POINTOPOINT|IFF_MULTICAST);


 if (ng_name_node(node, SP2IFP(pp)->if_xname) != 0)
  log (LOG_WARNING, "%s: can't acquire netgraph name\n",
      SP2IFP(pp)->if_xname);


 sppp_attach (ifp);
 if_attach (ifp);
 bpfattach (ifp, DLT_NULL, sizeof(u_int32_t));


 return (0);
}
