
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd; } ;
struct ecore_vlan_mac_ramrod_params {TYPE_2__ user_req; int ramrod_flags; struct ecore_vlan_mac_obj* vlan_mac_obj; } ;
struct ecore_vlan_mac_obj {int exe_queue; } ;
struct TYPE_3__ {int vlan_mac; } ;
struct ecore_exeq_elem {int cmd_len; TYPE_1__ cmd_data; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MEMCPY (int *,TYPE_2__*,int) ;
 int ECORE_NOMEM ;
 int ECORE_TEST_BIT (int ,int *) ;

 int RAMROD_RESTORE ;
 int ecore_exe_queue_add (struct bxe_softc*,int *,struct ecore_exeq_elem*,int) ;
 struct ecore_exeq_elem* ecore_exe_queue_alloc_elem (struct bxe_softc*) ;

__attribute__((used)) static inline int ecore_vlan_mac_push_new_cmd(
 struct bxe_softc *sc,
 struct ecore_vlan_mac_ramrod_params *p)
{
 struct ecore_exeq_elem *elem;
 struct ecore_vlan_mac_obj *o = p->vlan_mac_obj;
 bool restore = ECORE_TEST_BIT(RAMROD_RESTORE, &p->ramrod_flags);


 elem = ecore_exe_queue_alloc_elem(sc);
 if (!elem)
  return ECORE_NOMEM;


 switch (p->user_req.cmd) {
 case 128:
  elem->cmd_len = 2;
  break;
 default:
  elem->cmd_len = 1;
 }


 ECORE_MEMCPY(&elem->cmd_data.vlan_mac, &p->user_req, sizeof(p->user_req));


 return ecore_exe_queue_add(sc, &o->exe_queue, elem, restore);
}
