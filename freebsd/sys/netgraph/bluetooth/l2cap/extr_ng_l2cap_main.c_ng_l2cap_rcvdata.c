
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_1__* ng_l2cap_p ;
typedef int item_p ;
typedef scalar_t__ hook_p ;
struct TYPE_4__ {scalar_t__ hci; scalar_t__ l2c; } ;


 int EINVAL ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_NODE (scalar_t__) ;
 int NG_NODE_PRIVATE (int ) ;
 int ng_l2cap_l2ca_write_req (TYPE_1__*,struct mbuf*) ;
 int ng_l2cap_lp_receive (TYPE_1__*,struct mbuf*) ;

__attribute__((used)) static int
ng_l2cap_rcvdata(hook_p hook, item_p item)
{
 ng_l2cap_p l2cap = (ng_l2cap_p) NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct mbuf *m = ((void*)0);
 int error = 0;


 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);

 if (hook == l2cap->hci)
  error = ng_l2cap_lp_receive(l2cap, m);
 else if (hook == l2cap->l2c)
  error = ng_l2cap_l2ca_write_req(l2cap, m);
 else {
  NG_FREE_M(m);
  error = EINVAL;
 }

 return (error);
}
