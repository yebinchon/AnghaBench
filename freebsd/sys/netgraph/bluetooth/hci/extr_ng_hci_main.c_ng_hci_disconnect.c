
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ng_hci_unit_p ;
typedef int * hook_p ;
struct TYPE_3__ {int state; int * drv; int * raw; int * sco; int * acl; } ;


 int EINVAL ;
 int NG_HCI_UNIT_CONNECTED ;
 int NG_HCI_UNIT_INITED ;
 int NG_HOOK_NODE (int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 int NG_NODE_PRIVATE (int ) ;
 int ng_hci_unit_clean (TYPE_1__*,int) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_hci_disconnect(hook_p hook)
{
 ng_hci_unit_p unit = (ng_hci_unit_p) NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 if (hook == unit->acl)
  unit->acl = ((void*)0);
 else if (hook == unit->sco)
  unit->sco = ((void*)0);
 else if (hook == unit->raw)
  unit->raw = ((void*)0);
 else if (hook == unit->drv) {
  unit->drv = ((void*)0);


  ng_hci_unit_clean(unit, 0x16);
  unit->state &= ~(NG_HCI_UNIT_CONNECTED|NG_HCI_UNIT_INITED);
 } else
  return (EINVAL);


 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0) &&
     (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));

 return (0);
}
