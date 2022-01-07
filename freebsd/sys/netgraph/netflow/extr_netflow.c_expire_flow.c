
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct netflow_export_item {int item9_opt; int * item9; int * item; } ;
struct TYPE_11__ {scalar_t__ version; } ;
struct flow_entry {TYPE_1__ f; } ;
typedef TYPE_2__* priv_p ;
typedef int fib_export_p ;
struct TYPE_12__ {int zone6; int zone; int nfinfo_export9_failed; int * export9; int nfinfo_export_failed; int * export; } ;


 scalar_t__ IP6VERSION ;
 scalar_t__ IPVERSION ;
 int NG_QUEUE ;
 scalar_t__ export9_add (int *,int ,struct flow_entry*) ;
 int export9_send (TYPE_2__*,int ,int *,int ,int) ;
 scalar_t__ export_add (int *,struct flow_entry*) ;
 int export_send (TYPE_2__*,int ,int *,int) ;
 int * get_export9_dgram (TYPE_2__*,int ,int *) ;
 int * get_export_dgram (TYPE_2__*,int ) ;
 int panic (char*,scalar_t__) ;
 int return_export9_dgram (TYPE_2__*,int ,int *,int ,int ) ;
 int return_export_dgram (TYPE_2__*,int ,int *,int ) ;
 int uma_zfree_arg (int ,struct flow_entry*,TYPE_2__*) ;

__attribute__((used)) static void
expire_flow(priv_p priv, fib_export_p fe, struct flow_entry *fle, int flags)
{
 struct netflow_export_item exp;
 uint16_t version = fle->f.version;

 if ((priv->export != ((void*)0)) && (version == IPVERSION)) {
  exp.item = get_export_dgram(priv, fe);
  if (exp.item == ((void*)0)) {
   priv->nfinfo_export_failed++;
   if (priv->export9 != ((void*)0))
    priv->nfinfo_export9_failed++;

   uma_zfree_arg(priv->zone, fle, priv);
   return;
  }

  if (export_add(exp.item, fle) > 0)
   export_send(priv, fe, exp.item, flags);
  else
   return_export_dgram(priv, fe, exp.item, NG_QUEUE);
 }

 if (priv->export9 != ((void*)0)) {
  exp.item9 = get_export9_dgram(priv, fe, &exp.item9_opt);
  if (exp.item9 == ((void*)0)) {
   priv->nfinfo_export9_failed++;
   if (version == IPVERSION)
    uma_zfree_arg(priv->zone, fle, priv);




   else
    panic("ng_netflow: Unknown IP proto: %d",
        version);
   return;
  }

  if (export9_add(exp.item9, exp.item9_opt, fle) > 0)
   export9_send(priv, fe, exp.item9, exp.item9_opt, flags);
  else
   return_export9_dgram(priv, fe, exp.item9,
       exp.item9_opt, NG_QUEUE);
 }

 if (version == IPVERSION)
  uma_zfree_arg(priv->zone, fle, priv);




}
