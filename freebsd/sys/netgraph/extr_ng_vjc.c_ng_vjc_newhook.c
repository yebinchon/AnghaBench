
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef scalar_t__ hook_p ;
struct TYPE_3__ {scalar_t__ vjip; scalar_t__ vjuncomp; scalar_t__ vjcomp; scalar_t__ ip; } ;


 int EINVAL ;
 int EISCONN ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_VJC_HOOK_IP ;
 int NG_VJC_HOOK_VJCOMP ;
 int NG_VJC_HOOK_VJIP ;
 int NG_VJC_HOOK_VJUNCOMP ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_vjc_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 hook_p *hookp;


 if (strcmp(name, NG_VJC_HOOK_IP) == 0)
  hookp = &priv->ip;
 else if (strcmp(name, NG_VJC_HOOK_VJCOMP) == 0)
  hookp = &priv->vjcomp;
 else if (strcmp(name, NG_VJC_HOOK_VJUNCOMP) == 0)
  hookp = &priv->vjuncomp;
 else if (strcmp(name, NG_VJC_HOOK_VJIP) == 0)
  hookp = &priv->vjip;
 else
  return (EINVAL);


 if (*hookp)
  return (EISCONN);


 *hookp = hook;
 return (0);
}
