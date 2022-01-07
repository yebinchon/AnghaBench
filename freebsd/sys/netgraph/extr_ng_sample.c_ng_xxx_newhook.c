
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xxx_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_6__ {int dlci; int * hook; } ;
struct TYPE_5__ {int flags; void* debughook; TYPE_4__ downstream_hook; TYPE_4__* channel; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int ENOBUFS ;
 int NG_HOOK_SET_PRIVATE (void*,TYPE_4__*) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_XXX_HOOK_DEBUG ;
 int NG_XXX_HOOK_DLCI_LEADIN ;
 int NG_XXX_HOOK_DOWNSTREAM ;
 int SCF_RUNNING ;
 int XXX_NUM_DLCIS ;
 int isdigit (char const) ;
 int ng_xxx_start_hardware (TYPE_1__* const) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ng_xxx_newhook(node_p node, hook_p hook, const char *name)
{
 const xxx_p xxxp = NG_NODE_PRIVATE(node);
 const char *cp;
 int dlci = 0;
 int chan;
 if (strncmp(name,
     NG_XXX_HOOK_DLCI_LEADIN, strlen(NG_XXX_HOOK_DLCI_LEADIN)) == 0) {
  char *eptr;

  cp = name + strlen(NG_XXX_HOOK_DLCI_LEADIN);
  if (!isdigit(*cp) || (cp[0] == '0' && cp[1] != '\0'))
   return (EINVAL);
  dlci = (int)strtoul(cp, &eptr, 10);
  if (*eptr != '\0' || dlci < 0 || dlci > 1023)
   return (EINVAL);


  for (chan = 0; chan < XXX_NUM_DLCIS; chan++)
   if (xxxp->channel[chan].dlci == dlci)
    break;
  if (chan == XXX_NUM_DLCIS) {
   for (chan = 0; chan < XXX_NUM_DLCIS; chan++)
    if (xxxp->channel[chan].dlci == -2)
     break;
   if (chan == XXX_NUM_DLCIS)
    return (ENOBUFS);
   xxxp->channel[chan].dlci = dlci;
  }
  if (xxxp->channel[chan].hook != ((void*)0))
   return (EADDRINUSE);
  NG_HOOK_SET_PRIVATE(hook, xxxp->channel + chan);
  xxxp->channel[chan].hook = hook;
  return (0);
 } else if (strcmp(name, NG_XXX_HOOK_DOWNSTREAM) == 0) {


  xxxp->downstream_hook.hook = hook;
  NG_HOOK_SET_PRIVATE(hook, &xxxp->downstream_hook);
 } else if (strcmp(name, NG_XXX_HOOK_DEBUG) == 0) {

  xxxp->debughook = hook;
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 } else
  return (EINVAL);
 return(0);
}
