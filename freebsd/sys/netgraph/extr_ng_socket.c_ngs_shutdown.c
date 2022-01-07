
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngsock {int * node; struct ngpcb* ctlsock; struct ngpcb* datasock; int mtx; } ;
struct ngpcb {int ng_socket; } ;
typedef int node_p ;


 struct ngsock* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int mtx_lock (int *) ;
 int ng_socket_free_priv (struct ngsock* const) ;
 int soisdisconnected (int ) ;

__attribute__((used)) static int
ngs_shutdown(node_p node)
{
 struct ngsock *const priv = NG_NODE_PRIVATE(node);
 struct ngpcb *dpcbp, *pcbp;

 mtx_lock(&priv->mtx);
 dpcbp = priv->datasock;
 pcbp = priv->ctlsock;

 if (dpcbp != ((void*)0))
  soisdisconnected(dpcbp->ng_socket);

 if (pcbp != ((void*)0))
  soisdisconnected(pcbp->ng_socket);

 priv->node = ((void*)0);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 ng_socket_free_priv(priv);

 NG_NODE_UNREF(node);
 return (0);
}
