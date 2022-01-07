
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_6__ {int dlci; int * hook; int flags; } ;
struct TYPE_5__ {int datahooks; TYPE_4__* channel; TYPE_4__ downstream; } ;


 int CHAN_ACTIVE ;
 int EADDRINUSE ;
 int EINVAL ;
 int ENOBUFS ;
 int NG_FRAMERELAY_HOOK_DEBUG ;
 int NG_FRAMERELAY_HOOK_DLCI ;
 int NG_FRAMERELAY_HOOK_DOWNSTREAM ;
 int NG_HOOK_SET_PRIVATE (void*,TYPE_4__*) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int isdigit (char const) ;
 int ngfrm_allocate_CTX (TYPE_1__* const,int) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ngfrm_newhook(node_p node, hook_p hook, const char *name)
{
 const sc_p sc = NG_NODE_PRIVATE(node);
 const char *cp;
 char *eptr;
 int dlci = 0;
 int ctxnum;


 if (strcmp(name, NG_FRAMERELAY_HOOK_DEBUG) == 0) {
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));
  return (0);
 }






 if (strncmp(name, NG_FRAMERELAY_HOOK_DLCI,
     strlen(NG_FRAMERELAY_HOOK_DLCI)) != 0) {


  if (strcmp(name, NG_FRAMERELAY_HOOK_DOWNSTREAM) != 0)
   return EINVAL;


  if (sc->downstream.hook)
   return (EADDRINUSE);


  NG_HOOK_SET_PRIVATE(hook, &sc->downstream);
  sc->downstream.hook = hook;
  sc->downstream.dlci = -1;
  sc->downstream.flags |= CHAN_ACTIVE;
  sc->datahooks++;
  return (0);
 }


 cp = name + strlen(NG_FRAMERELAY_HOOK_DLCI);
 if (!isdigit(*cp) || (cp[0] == '0' && cp[1] != '\0'))
  return (EINVAL);
 dlci = (int)strtoul(cp, &eptr, 10);
 if (*eptr != '\0' || dlci < 0 || dlci > 1023)
  return (EINVAL);






 ctxnum = ngfrm_allocate_CTX(sc, dlci);
 if (ctxnum == -1)
  return (ENOBUFS);






 if (sc->channel[ctxnum].hook != ((void*)0))
  return (EADDRINUSE);




 sc->channel[ctxnum].flags |= CHAN_ACTIVE;
 NG_HOOK_SET_PRIVATE(hook, sc->channel + ctxnum);
 sc->channel[ctxnum].hook = hook;
 sc->datahooks++;
 return (0);
}
