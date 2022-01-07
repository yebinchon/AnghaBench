
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_10__ {int so_snd; int so_rcv; } ;
struct TYPE_9__ {int flags; int node; int embryos; TYPE_2__* so; } ;


 int KSF_EMBRYONIC ;
 int LIST_EMPTY (int *) ;
 TYPE_1__* LIST_FIRST (int *) ;
 int LIST_REMOVE (TYPE_1__* const,int ) ;
 int M_NETGRAPH_KSOCKET ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int SO_SND ;
 int bzero (TYPE_1__* const,int) ;
 int free (TYPE_1__* const,int ) ;
 int ng_rmnode_self (int ) ;
 int siblings ;
 int soclose (TYPE_2__*) ;
 int soupcall_clear (TYPE_2__*,int ) ;

__attribute__((used)) static int
ng_ksocket_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 priv_p embryo;


 if (priv->so != ((void*)0)) {
  SOCKBUF_LOCK(&priv->so->so_rcv);
  soupcall_clear(priv->so, SO_RCV);
  SOCKBUF_UNLOCK(&priv->so->so_rcv);
  SOCKBUF_LOCK(&priv->so->so_snd);
  soupcall_clear(priv->so, SO_SND);
  SOCKBUF_UNLOCK(&priv->so->so_snd);
  soclose(priv->so);
  priv->so = ((void*)0);
 }


 if (priv->flags & KSF_EMBRYONIC) {
  LIST_REMOVE(priv, siblings);
  priv->flags &= ~KSF_EMBRYONIC;
 }


 while (!LIST_EMPTY(&priv->embryos)) {
  embryo = LIST_FIRST(&priv->embryos);
  ng_rmnode_self(embryo->node);
 }


 bzero(priv, sizeof(*priv));
 free(priv, M_NETGRAPH_KSOCKET);
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);
 return (0);
}
