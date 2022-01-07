
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef TYPE_3__* iface_p ;
typedef void* hook_p ;
struct TYPE_6__ {int ifinfo_dlt; } ;
struct TYPE_8__ {int * out; TYPE_1__ info; int * hook; } ;
struct TYPE_7__ {int exp_callout; int * export9; int * export; TYPE_3__* ifaces; } ;


 scalar_t__ CNTR_MAX ;
 int DLT_EN10MB ;
 int EINVAL ;
 int EISCONN ;
 int NG_HOOK_SET_PRIVATE (void*,TYPE_3__*) ;
 int NG_NETFLOW_HOOK_DATA ;
 int NG_NETFLOW_HOOK_EXPORT ;
 int NG_NETFLOW_HOOK_EXPORT9 ;
 int NG_NETFLOW_HOOK_OUT ;
 int NG_NETFLOW_MAXIFACES ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ UINT64_MAX ;
 int callout_reset (int *,int,int *,void*) ;
 int hz ;
 int isdigit (char const) ;
 int ng_netflow_expire ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ng_netflow_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (strncmp(name, NG_NETFLOW_HOOK_DATA,
     strlen(NG_NETFLOW_HOOK_DATA)) == 0) {
  iface_p iface;
  int ifnum = -1;
  const char *cp;
  char *eptr;

  cp = name + strlen(NG_NETFLOW_HOOK_DATA);
  if (!isdigit(*cp) || (cp[0] == '0' && cp[1] != '\0'))
   return (EINVAL);

  ifnum = (int)strtoul(cp, &eptr, 10);
  if (*eptr != '\0' || ifnum < 0 || ifnum >= NG_NETFLOW_MAXIFACES)
   return (EINVAL);


  if (priv->ifaces[ifnum].hook != ((void*)0))
   return (EISCONN);

  iface = &priv->ifaces[ifnum];


  NG_HOOK_SET_PRIVATE(hook, iface);
  iface->hook = hook;






  iface->info.ifinfo_dlt = DLT_EN10MB;

 } else if (strncmp(name, NG_NETFLOW_HOOK_OUT,
     strlen(NG_NETFLOW_HOOK_OUT)) == 0) {
  iface_p iface;
  int ifnum = -1;
  const char *cp;
  char *eptr;

  cp = name + strlen(NG_NETFLOW_HOOK_OUT);
  if (!isdigit(*cp) || (cp[0] == '0' && cp[1] != '\0'))
   return (EINVAL);

  ifnum = (int)strtoul(cp, &eptr, 10);
  if (*eptr != '\0' || ifnum < 0 || ifnum >= NG_NETFLOW_MAXIFACES)
   return (EINVAL);


  if (priv->ifaces[ifnum].out != ((void*)0))
   return (EISCONN);

  iface = &priv->ifaces[ifnum];


  NG_HOOK_SET_PRIVATE(hook, iface);
  iface->out = hook;

 } else if (strcmp(name, NG_NETFLOW_HOOK_EXPORT) == 0) {

  if (priv->export != ((void*)0))
   return (EISCONN);


  if (CNTR_MAX == UINT64_MAX)
   return (EINVAL);

  priv->export = hook;


  callout_reset(&priv->exp_callout, (1*hz), &ng_netflow_expire,
      (void *)priv);
 } else if (strcmp(name, NG_NETFLOW_HOOK_EXPORT9) == 0) {

  if (priv->export9 != ((void*)0))
   return (EISCONN);

  priv->export9 = hook;


  callout_reset(&priv->exp_callout, (1*hz), &ng_netflow_expire,
      (void *)priv);
 } else
  return (EINVAL);

 return (0);
}
