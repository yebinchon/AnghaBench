
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bits; } ;
struct ng_mppc_dir {int flushed; TYPE_1__ cfg; int key; int rc4; int * history; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {struct ng_mppc_dir xmit; } ;


 int KEYLEN (int) ;
 int MPPC_InitCompressionHistory (int *) ;
 int MPPE_STATELESS ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int rc4_init (int *,int ,int ) ;

__attribute__((used)) static void
ng_mppc_reset_req(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mppc_dir *const d = &priv->xmit;
 d->flushed = 1;
}
