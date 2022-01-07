
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_l2cap_p ;
typedef int * hook_p ;
struct TYPE_2__ {int * ctl; int * l2c; int * hci; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_L2CAP_HOOK_CTL ;
 int NG_L2CAP_HOOK_HCI ;
 int NG_L2CAP_HOOK_L2C ;
 int NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_l2cap_newhook(node_p node, hook_p hook, char const *name)
{
 ng_l2cap_p l2cap = (ng_l2cap_p) NG_NODE_PRIVATE(node);
 hook_p *h = ((void*)0);

 if (strcmp(name, NG_L2CAP_HOOK_HCI) == 0)
  h = &l2cap->hci;
 else if (strcmp(name, NG_L2CAP_HOOK_L2C) == 0)
  h = &l2cap->l2c;
 else if (strcmp(name, NG_L2CAP_HOOK_CTL) == 0)
  h = &l2cap->ctl;
 else
  return (EINVAL);

 if (*h != ((void*)0))
  return (EISCONN);

 *h = hook;

 return (0);
}
