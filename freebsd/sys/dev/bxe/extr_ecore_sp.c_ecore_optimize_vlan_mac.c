
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_exe_queue_obj {int exe_queue; struct ecore_exeq_elem* (* get ) (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;} ;
struct ecore_vlan_mac_obj {int (* get_credit ) (struct ecore_vlan_mac_obj*) ;int (* put_credit ) (struct ecore_vlan_mac_obj*) ;struct ecore_exe_queue_obj exe_queue; } ;
union ecore_qable_obj {struct ecore_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int cmd; int vlan_mac_flags; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct ecore_exeq_elem {int link; TYPE_2__ cmd_data; } ;
struct bxe_softc {int dummy; } ;
typedef int query ;


 int ECORE_DONT_CONSUME_CAM_CREDIT ;
 int ECORE_ERR (char*) ;
 int ECORE_INVAL ;
 int ECORE_LIST_REMOVE_ENTRY (int *,int *) ;
 int ECORE_MEMCPY (struct ecore_exeq_elem*,struct ecore_exeq_elem*,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,char*) ;
 int ECORE_TEST_BIT (int ,int *) ;


 int ecore_exe_queue_free_elem (struct bxe_softc*,struct ecore_exeq_elem*) ;
 struct ecore_exeq_elem* stub1 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;
 int stub2 (struct ecore_vlan_mac_obj*) ;
 int stub3 (struct ecore_vlan_mac_obj*) ;

__attribute__((used)) static int ecore_optimize_vlan_mac(struct bxe_softc *sc,
       union ecore_qable_obj *qo,
       struct ecore_exeq_elem *elem)
{
 struct ecore_exeq_elem query, *pos;
 struct ecore_vlan_mac_obj *o = &qo->vlan_mac;
 struct ecore_exe_queue_obj *exeq = &o->exe_queue;

 ECORE_MEMCPY(&query, elem, sizeof(query));

 switch (elem->cmd_data.vlan_mac.cmd) {
 case 129:
  query.cmd_data.vlan_mac.cmd = 128;
  break;
 case 128:
  query.cmd_data.vlan_mac.cmd = 129;
  break;
 default:

  return 0;
 }


 pos = exeq->get(exeq, &query);
 if (pos) {


  if (!ECORE_TEST_BIT(ECORE_DONT_CONSUME_CAM_CREDIT,
         &pos->cmd_data.vlan_mac.vlan_mac_flags)) {
   if ((query.cmd_data.vlan_mac.cmd ==
        129) && !o->put_credit(o)) {
    ECORE_ERR("Failed to return the credit for the optimized ADD command\n");
    return ECORE_INVAL;
   } else if (!o->get_credit(o)) {
    ECORE_ERR("Failed to recover the credit from the optimized DEL command\n");
    return ECORE_INVAL;
   }
  }

  ECORE_MSG(sc, "Optimizing %s command\n",
     (elem->cmd_data.vlan_mac.cmd == 129) ?
     "ADD" : "DEL");

  ECORE_LIST_REMOVE_ENTRY(&pos->link, &exeq->exe_queue);
  ecore_exe_queue_free_elem(sc, pos);
  return 1;
 }

 return 0;
}
