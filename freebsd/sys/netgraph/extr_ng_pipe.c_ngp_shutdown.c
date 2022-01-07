
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* priv_p ;
typedef int node_p ;
struct TYPE_7__ {int * hook; } ;
struct TYPE_6__ {int * hook; } ;
struct TYPE_8__ {TYPE_2__ lower; TYPE_1__ upper; int timer; scalar_t__ timer_scheduled; } ;


 int M_NG_PIPE ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_3__* const,int ) ;
 int ng_bypass (int *,int *) ;
 int ng_rmhook_self (int *) ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static int
ngp_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (priv->timer_scheduled)
  ng_uncallout(&priv->timer, node);
 if (priv->lower.hook && priv->upper.hook)
  ng_bypass(priv->lower.hook, priv->upper.hook);
 else {
  if (priv->upper.hook != ((void*)0))
   ng_rmhook_self(priv->upper.hook);
  if (priv->lower.hook != ((void*)0))
   ng_rmhook_self(priv->lower.hook);
 }
 NG_NODE_UNREF(node);
 free(priv, M_NG_PIPE);
 return (0);
}
