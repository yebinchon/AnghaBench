
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* xxx_p ;
struct mbuf {int dummy; } ;
struct XXX_hookinfo {int dlci; int channel; } ;
typedef int item_p ;
typedef scalar_t__ hook_p ;
struct TYPE_6__ {scalar_t__ hook; } ;
struct TYPE_7__ {TYPE_2__ downstream_hook; int packets_in; TYPE_1__* channel; int packets_out; } ;
struct TYPE_5__ {int dlci; scalar_t__ hook; } ;


 int ENETUNREACH ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_FWD_NEW_DATA (int,int ,scalar_t__,struct mbuf*) ;
 int NG_HOOK_NODE (scalar_t__) ;
 scalar_t__ NG_HOOK_PRIVATE (scalar_t__) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int XXX_NUM_DLCIS ;

__attribute__((used)) static int
ng_xxx_rcvdata(hook_p hook, item_p item )
{
 const xxx_p xxxp = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 int chan = -2;
 int dlci = -2;
 int error;
 struct mbuf *m;

 NGI_GET_M(item, m);
 if (NG_HOOK_PRIVATE(hook)) {
  dlci = ((struct XXX_hookinfo *) NG_HOOK_PRIVATE(hook))->dlci;
  chan = ((struct XXX_hookinfo *) NG_HOOK_PRIVATE(hook))->channel;
  if (dlci != -1) {






   NG_FWD_NEW_DATA(error, item,
    xxxp->downstream_hook.hook, m);
   xxxp->packets_out++;
  } else {

   dlci = 1;

   for (chan = 0; chan < XXX_NUM_DLCIS; chan++)
    if (xxxp->channel[chan].dlci == dlci)
     break;
   if (chan == XXX_NUM_DLCIS) {
    NG_FREE_ITEM(item);
    NG_FREE_M(m);
    return (ENETUNREACH);
   }
   NG_FWD_NEW_DATA(error, item,
    xxxp->channel[chan].hook, m);
   xxxp->packets_in++;
  }
 } else {

  if (hook == xxxp->downstream_hook.hook) {
   NG_FREE_ITEM(item);
   NG_FREE_M(m);
  }
 }
 return 0;
}
