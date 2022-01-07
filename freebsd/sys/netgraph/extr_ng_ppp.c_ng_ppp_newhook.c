
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_4__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_11__ {int fn; int * name; } ;
struct TYPE_9__ {int enableMultilink; } ;
struct TYPE_10__ {int numActiveLinks; int ** hooks; TYPE_3__ conf; TYPE_2__* links; } ;
struct TYPE_7__ {scalar_t__ enableLink; } ;
struct TYPE_8__ {TYPE_1__ conf; int * hook; } ;


 int EINVAL ;
 int EISCONN ;
 int ENODEV ;
 int NG_HOOK_SET_PRIVATE (int *,void*) ;
 int NG_HOOK_SET_RCVDATA (int *,int ) ;
 TYPE_4__* NG_NODE_PRIVATE (int ) ;
 int NG_PPP_HOOK_LINK_PREFIX ;
 int NG_PPP_MAX_LINKS ;
 int isdigit (char const) ;
 TYPE_5__* ng_ppp_hook_names ;
 int ng_ppp_update (int ,int ) ;
 scalar_t__ strcmp (char const*,int *) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ng_ppp_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 hook_p *hookPtr = ((void*)0);
 int linkNum = -1;
 int hookIndex = -1;


 if (strncmp(name, NG_PPP_HOOK_LINK_PREFIX,
     strlen(NG_PPP_HOOK_LINK_PREFIX)) == 0) {
  const char *cp;
  char *eptr;

  cp = name + strlen(NG_PPP_HOOK_LINK_PREFIX);
  if (!isdigit(*cp) || (cp[0] == '0' && cp[1] != '\0'))
   return (EINVAL);
  linkNum = (int)strtoul(cp, &eptr, 10);
  if (*eptr != '\0' || linkNum < 0 || linkNum >= NG_PPP_MAX_LINKS)
   return (EINVAL);
  hookPtr = &priv->links[linkNum].hook;
  hookIndex = ~linkNum;


  if (*hookPtr != ((void*)0))
   return (EISCONN);


  if (priv->links[linkNum].conf.enableLink &&
      !priv->conf.enableMultilink && priv->numActiveLinks >= 1)
   return (ENODEV);

 } else {
  int i;

  for (i = 0; ng_ppp_hook_names[i].name != ((void*)0); i++) {
   if (strcmp(name, ng_ppp_hook_names[i].name) == 0) {
    hookPtr = &priv->hooks[i];
    hookIndex = i;
    break;
   }
  }
  if (ng_ppp_hook_names[i].name == ((void*)0))
   return (EINVAL);


  if (*hookPtr != ((void*)0))
   return (EISCONN);


  NG_HOOK_SET_RCVDATA(hook, ng_ppp_hook_names[i].fn);
 }


 *hookPtr = hook;
 NG_HOOK_SET_PRIVATE(hook, (void *)(intptr_t)hookIndex);
 ng_ppp_update(node, 0);
 return (0);
}
