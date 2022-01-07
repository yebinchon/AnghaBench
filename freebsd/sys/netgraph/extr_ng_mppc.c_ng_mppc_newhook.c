
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_6__ {int * hook; } ;
struct TYPE_5__ {int * hook; } ;
struct TYPE_7__ {TYPE_2__ recv; TYPE_1__ xmit; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_MPPC_HOOK_COMP ;
 int NG_MPPC_HOOK_DECOMP ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_mppc_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 hook_p *hookPtr;


 if (strcmp(name, NG_MPPC_HOOK_COMP) == 0)
  hookPtr = &priv->xmit.hook;
 else if (strcmp(name, NG_MPPC_HOOK_DECOMP) == 0)
  hookPtr = &priv->recv.hook;
 else
  return (EINVAL);


 if (*hookPtr != ((void*)0))
  return (EISCONN);


 *hookPtr = hook;
 return (0);
}
