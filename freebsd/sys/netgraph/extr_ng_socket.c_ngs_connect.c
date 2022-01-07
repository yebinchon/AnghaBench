
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ngsock {TYPE_2__* datasock; } ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_4__ {TYPE_1__* ng_socket; } ;
struct TYPE_3__ {int so_state; } ;


 int NG_HOOK_NODE (int ) ;
 int NG_NODE_NUMHOOKS (int ) ;
 struct ngsock* NG_NODE_PRIVATE (int ) ;
 int SS_ISCONNECTED ;

__attribute__((used)) static int
ngs_connect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 struct ngsock *priv = NG_NODE_PRIVATE(node);

 if ((priv->datasock) && (priv->datasock->ng_socket)) {
  if (NG_NODE_NUMHOOKS(node) == 1)
   priv->datasock->ng_socket->so_state |= SS_ISCONNECTED;
  else
   priv->datasock->ng_socket->so_state &= ~SS_ISCONNECTED;
 }
 return (0);
}
