
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int dummy; } ;
struct ngsock {int refs; TYPE_1__* node; struct ngpcb* ctlsock; int mtx; int hmask; int hash; } ;
struct ngpcb {int node_id; struct ngsock* sockdata; } ;
typedef TYPE_1__* node_p ;
struct TYPE_5__ {int nd_ID; } ;


 int MTX_DEF ;
 int M_NETGRAPH_SOCK ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_CONTROL ;
 int NG_NODE_REF (TYPE_1__*) ;
 int NG_NODE_SET_PRIVATE (TYPE_1__*,struct ngsock*) ;
 int hashinit (int,int ,int *) ;
 struct ngsock* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_attach_common (struct socket*,int ) ;
 int ng_detach_common (struct ngpcb*,int ) ;
 int ng_make_node_common (int *,TYPE_1__**) ;
 struct ngpcb* sotongpcb (struct socket*) ;
 int typestruct ;

__attribute__((used)) static int
ng_attach_cntl(struct socket *so)
{
 struct ngsock *priv;
 struct ngpcb *pcbp;
 node_p node;
 int error;


 if ((error = ng_attach_common(so, NG_CONTROL)) != 0)
  return (error);
 pcbp = sotongpcb(so);


 if ((error = ng_make_node_common(&typestruct, &node)) != 0) {
  ng_detach_common(pcbp, NG_CONTROL);
  return (error);
 }







 priv = malloc(sizeof(*priv), M_NETGRAPH_SOCK, M_WAITOK | M_ZERO);
 priv->hash = hashinit(16, M_NETGRAPH_SOCK, &priv->hmask);


 mtx_init(&priv->mtx, "ng_socket", ((void*)0), MTX_DEF);


 priv->ctlsock = pcbp;
 pcbp->sockdata = priv;
 priv->refs++;
 priv->node = node;
 pcbp->node_id = node->nd_ID;


 NG_NODE_SET_PRIVATE(priv->node, priv);
 NG_NODE_REF(priv->node);
 priv->refs++;

 return (0);
}
