
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ngsock {int flags; TYPE_2__* datasock; } ;
struct hookpriv {int dummy; } ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_4__ {TYPE_1__* ng_socket; } ;
struct TYPE_3__ {int so_state; } ;


 int LIST_REMOVE (struct hookpriv*,int ) ;
 int M_NETGRAPH_SOCK ;
 int NGS_FLAG_NOLINGER ;
 int NG_HOOK_NODE (int ) ;
 struct hookpriv* NG_HOOK_PRIVATE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 struct ngsock* NG_NODE_PRIVATE (int ) ;
 int SS_ISCONNECTED ;
 int free (struct hookpriv*,int ) ;
 int next ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ngs_disconnect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 struct ngsock *const priv = NG_NODE_PRIVATE(node);
 struct hookpriv *hp = NG_HOOK_PRIVATE(hook);

 LIST_REMOVE(hp, next);
 free(hp, M_NETGRAPH_SOCK);

 if ((priv->datasock) && (priv->datasock->ng_socket)) {
  if (NG_NODE_NUMHOOKS(node) == 1)
   priv->datasock->ng_socket->so_state |= SS_ISCONNECTED;
  else
   priv->datasock->ng_socket->so_state &= ~SS_ISCONNECTED;
 }

 if ((priv->flags & NGS_FLAG_NOLINGER) &&
     (NG_NODE_NUMHOOKS(node) == 0) && (NG_NODE_IS_VALID(node)))
  ng_rmnode_self(node);

 return (0);
}
