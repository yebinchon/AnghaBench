
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_hci_unit_p ;
typedef int * hook_p ;
struct TYPE_2__ {int * raw; int * sco; int * acl; int * drv; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_HCI_HOOK_ACL ;
 int NG_HCI_HOOK_DRV ;
 int NG_HCI_HOOK_RAW ;
 int NG_HCI_HOOK_SCO ;
 int NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_hci_newhook(node_p node, hook_p hook, char const *name)
{
 ng_hci_unit_p unit = (ng_hci_unit_p) NG_NODE_PRIVATE(node);
 hook_p *h = ((void*)0);

 if (strcmp(name, NG_HCI_HOOK_DRV) == 0)
  h = &unit->drv;
 else if (strcmp(name, NG_HCI_HOOK_ACL) == 0)
  h = &unit->acl;
 else if (strcmp(name, NG_HCI_HOOK_SCO) == 0)
  h = &unit->sco;
 else if (strcmp(name, NG_HCI_HOOK_RAW) == 0)
  h = &unit->raw;
 else
  return (EINVAL);

 if (*h != ((void*)0))
  return (EISCONN);

 *h = hook;

 return (0);
}
