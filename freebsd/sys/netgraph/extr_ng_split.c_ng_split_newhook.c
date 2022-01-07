
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_3__ {int * out; int * in; int * mixed; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_HOOK_SET_PRIVATE (int *,int **) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_SPLIT_HOOK_IN ;
 int NG_SPLIT_HOOK_MIXED ;
 int NG_SPLIT_HOOK_OUT ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_split_newhook(node_p node, hook_p hook, const char *name)
{
 priv_p priv = NG_NODE_PRIVATE(node);
 hook_p *localhook;

 if (strcmp(name, NG_SPLIT_HOOK_MIXED) == 0) {
  localhook = &priv->mixed;
 } else if (strcmp(name, NG_SPLIT_HOOK_IN) == 0) {
  localhook = &priv->in;
 } else if (strcmp(name, NG_SPLIT_HOOK_OUT) == 0) {
  localhook = &priv->out;
 } else
  return (EINVAL);

 if (*localhook != ((void*)0))
  return (EISCONN);
 *localhook = hook;
 NG_HOOK_SET_PRIVATE(hook, localhook);

 return (0);
}
