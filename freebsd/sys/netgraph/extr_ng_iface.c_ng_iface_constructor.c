
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_8__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_baudrate; int if_xname; TYPE_5__ if_snd; scalar_t__ if_hdrlen; scalar_t__ if_addrlen; int if_type; int if_mtu; int if_ioctl; int if_start; int if_output; TYPE_1__* if_softc; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_7__ {int unit; int node; struct ifnet* ifp; int lock; } ;


 int DLT_NULL ;
 int ENOMEM ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_5__*,int ) ;
 int IFQ_SET_READY (TYPE_5__*) ;
 int IFT_PROPVIRTUAL ;
 int LOG_WARNING ;
 int M_NETGRAPH_IFACE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_IFACE_IFACE_NAME ;
 int NG_IFACE_MTU_DEFAULT ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 int V_ng_iface_unit ;
 int alloc_unr (int ) ;
 int bpfattach (struct ifnet*,int ,int) ;
 int free (TYPE_1__*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifqmaxlen ;
 int log (int ,char*,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ng_iface_ioctl ;
 int ng_iface_output ;
 int ng_iface_start ;
 scalar_t__ ng_name_node (int ,int ) ;
 int rm_init (int *,char*) ;

__attribute__((used)) static int
ng_iface_constructor(node_p node)
{
 struct ifnet *ifp;
 priv_p priv;


 priv = malloc(sizeof(*priv), M_NETGRAPH_IFACE, M_WAITOK | M_ZERO);
 ifp = if_alloc(IFT_PROPVIRTUAL);
 if (ifp == ((void*)0)) {
  free(priv, M_NETGRAPH_IFACE);
  return (ENOMEM);
 }

 rm_init(&priv->lock, "ng_iface private rmlock");


 ifp->if_softc = priv;
 priv->ifp = ifp;


 priv->unit = alloc_unr(V_ng_iface_unit);


 NG_NODE_SET_PRIVATE(node, priv);
 priv->node = node;


 if_initname(ifp, NG_IFACE_IFACE_NAME, priv->unit);
 ifp->if_output = ng_iface_output;
 ifp->if_start = ng_iface_start;
 ifp->if_ioctl = ng_iface_ioctl;
 ifp->if_mtu = NG_IFACE_MTU_DEFAULT;
 ifp->if_flags = (IFF_SIMPLEX|IFF_POINTOPOINT|IFF_NOARP|IFF_MULTICAST);
 ifp->if_type = IFT_PROPVIRTUAL;
 ifp->if_addrlen = 0;
 ifp->if_hdrlen = 0;
 ifp->if_baudrate = 64000;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);


 if (ng_name_node(node, ifp->if_xname) != 0)
  log(LOG_WARNING, "%s: can't acquire netgraph name\n",
      ifp->if_xname);


 if_attach(ifp);
 bpfattach(ifp, DLT_NULL, sizeof(u_int32_t));


 return (0);
}
