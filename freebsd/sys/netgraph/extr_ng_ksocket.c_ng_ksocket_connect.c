
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; int so_snd; int so_rcv; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_3__ {int flags; struct socket* so; } ;


 int KSF_CLONED ;
 int M_NOWAIT ;
 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SO_RCV ;
 int SO_SND ;
 int SS_NBIO ;
 int ng_ksocket_incoming ;
 int ng_ksocket_incoming2 ;
 int ng_send_fn (int ,int *,int *,struct socket* const,int ) ;
 int soupcall_set (struct socket*,int ,int ,int ) ;

__attribute__((used)) static int
ng_ksocket_connect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct socket *const so = priv->so;


 SOCKBUF_LOCK(&priv->so->so_rcv);
 soupcall_set(priv->so, SO_RCV, ng_ksocket_incoming, node);
 SOCKBUF_UNLOCK(&priv->so->so_rcv);
 SOCKBUF_LOCK(&priv->so->so_snd);
 soupcall_set(priv->so, SO_SND, ng_ksocket_incoming, node);
 SOCKBUF_UNLOCK(&priv->so->so_snd);
 SOCK_LOCK(priv->so);
 priv->so->so_state |= SS_NBIO;
 SOCK_UNLOCK(priv->so);
 if (priv->flags & KSF_CLONED) {
  ng_send_fn(node, ((void*)0), &ng_ksocket_incoming2, so, M_NOWAIT);
 }

 return (0);
}
