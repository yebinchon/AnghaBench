
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef scalar_t__ item_p ;
typedef int * hook_p ;
struct TYPE_3__ {int * out; int * mixed; int * in; } ;


 int EINVAL ;
 int NG_FREE_ITEM (scalar_t__) ;
 int NG_FWD_ITEM_HOOK (int,scalar_t__,int *) ;
 int NG_HOOK_NODE (int *) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
ng_split_rcvdata(hook_p hook, item_p item)
{
 const priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 int error = 0;

 if (hook == priv->out) {
  printf("ng_split: got packet from out hook!\n");
  NG_FREE_ITEM(item);
  error = EINVAL;
 } else if ((hook == priv->in) && (priv->mixed != ((void*)0))) {
  NG_FWD_ITEM_HOOK(error, item, priv->mixed);
 } else if ((hook == priv->mixed) && (priv->out != ((void*)0))) {
  NG_FWD_ITEM_HOOK(error, item, priv->out);
 }

 if (item)
  NG_FREE_ITEM(item);

 return (error);
}
