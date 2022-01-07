
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_3__ {int lowerOrphan; int * lower; } ;


 int EINVAL ;
 int EISCONN ;
 char* NG_GIF_HOOK_DIVERT ;
 char* NG_GIF_HOOK_LOWER ;
 char* NG_GIF_HOOK_ORPHAN ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ng_gif_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 u_char orphan = priv->lowerOrphan;
 hook_p *hookptr;


 if (strcmp(name, NG_GIF_HOOK_DIVERT) == 0)
  name = NG_GIF_HOOK_LOWER;


 if (strcmp(name, NG_GIF_HOOK_LOWER) == 0) {
  hookptr = &priv->lower;
  orphan = 0;
 } else if (strcmp(name, NG_GIF_HOOK_ORPHAN) == 0) {
  hookptr = &priv->lower;
  orphan = 1;
 } else
  return (EINVAL);


 if (*hookptr != ((void*)0))
  return (EISCONN);


 *hookptr = hook;
 priv->lowerOrphan = orphan;
 return (0);
}
