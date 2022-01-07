
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngsock {int refs; int mtx; int * node; int hmask; int hash; } ;
typedef int * node_p ;


 int MA_OWNED ;
 int M_NETGRAPH_SOCK ;
 int NG_NODE_UNREF (int *) ;
 int free (struct ngsock*,int ) ;
 int hashdestroy (int ,int ,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_unlock (int *) ;
 int ng_rmnode_self (int *) ;

__attribute__((used)) static void
ng_socket_free_priv(struct ngsock *priv)
{
 mtx_assert(&priv->mtx, MA_OWNED);

 priv->refs--;

 if (priv->refs == 0) {
  mtx_destroy(&priv->mtx);
  hashdestroy(priv->hash, M_NETGRAPH_SOCK, priv->hmask);
  free(priv, M_NETGRAPH_SOCK);
  return;
 }

 if ((priv->refs == 1) && (priv->node != ((void*)0))) {
  node_p node = priv->node;

  priv->node = ((void*)0);
  mtx_unlock(&priv->mtx);
  NG_NODE_UNREF(node);
  ng_rmnode_self(node);
 } else
  mtx_unlock(&priv->mtx);
}
