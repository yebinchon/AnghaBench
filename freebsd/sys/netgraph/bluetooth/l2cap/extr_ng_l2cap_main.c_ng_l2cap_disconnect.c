
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ng_l2cap_p ;
typedef scalar_t__ hook_p ;
struct TYPE_4__ {scalar_t__ hci; scalar_t__ l2c; scalar_t__ ctl; } ;


 int EINVAL ;
 int NG_HOOK_NODE (scalar_t__) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int ng_l2cap_cleanup (TYPE_1__*) ;
 int ng_l2cap_destroy_channels (TYPE_1__*) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_l2cap_disconnect(hook_p hook)
{
 ng_l2cap_p l2cap = (ng_l2cap_p) NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 hook_p *h = ((void*)0);

 if (hook == l2cap->hci) {
  ng_l2cap_cleanup(l2cap);
  h = &l2cap->hci;
 } else
 if (hook == l2cap->l2c) {
  ng_l2cap_destroy_channels(l2cap);
  h = &l2cap->l2c;
 } else
 if (hook == l2cap->ctl)
  h = &l2cap->ctl;
 else
  return (EINVAL);

 *h = ((void*)0);


 if (NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0 &&
     NG_NODE_IS_VALID(NG_HOOK_NODE(hook)))
  ng_rmnode_self(NG_HOOK_NODE(hook));

 return (0);
}
