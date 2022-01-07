
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ng_l2cap_p ;
typedef scalar_t__ hook_p ;
struct TYPE_2__ {scalar_t__ hci; scalar_t__ l2c; scalar_t__ ctl; int node; } ;


 int EINVAL ;
 int NG_HOOK_NODE (scalar_t__) ;
 int NG_HOOK_SET_RCVMSG (scalar_t__,int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int ng_l2cap_lower_rcvmsg ;
 int ng_l2cap_send_hook_info ;
 int ng_l2cap_upper_rcvmsg ;
 int ng_send_fn (int ,scalar_t__,int ,int *,int ) ;

__attribute__((used)) static int
ng_l2cap_connect(hook_p hook)
{
 ng_l2cap_p l2cap = (ng_l2cap_p) NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 int error = 0;

 if (hook == l2cap->hci)
  NG_HOOK_SET_RCVMSG(hook, ng_l2cap_lower_rcvmsg);
 else
 if (hook == l2cap->l2c || hook == l2cap->ctl) {
  NG_HOOK_SET_RCVMSG(hook, ng_l2cap_upper_rcvmsg);


  error = ng_send_fn(l2cap->node, hook, ng_l2cap_send_hook_info,
    ((void*)0), 0);
 } else
  error = EINVAL;

 return (error);
}
