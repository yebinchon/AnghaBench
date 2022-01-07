
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {void* vlan; int header; } ;
union eth_classify_rule_cmd {TYPE_5__ vlan; } ;
typedef int uint16_t ;
struct eth_classify_rules_ramrod_data {int header; union eth_classify_rule_cmd* rules; } ;
struct ecore_raw_obj {int state; int cid; scalar_t__ rdata; } ;
struct ecore_vlan_mac_obj {struct ecore_raw_obj raw; } ;
struct TYPE_6__ {int vlan; } ;
struct TYPE_7__ {TYPE_1__ vlan; } ;
struct TYPE_8__ {int cmd; struct ecore_vlan_mac_obj* target_obj; TYPE_2__ u; } ;
struct TYPE_9__ {TYPE_3__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_4__ cmd_data; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_vlan_mac_cmd { ____Placeholder_ecore_vlan_mac_cmd } ecore_vlan_mac_cmd ;


 int CLASSIFY_RULE_OPCODE_VLAN ;
 void* ECORE_CPU_TO_LE16 (int ) ;
 int ECORE_MEMSET (struct eth_classify_rules_ramrod_data*,int ,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,char*,int ) ;
 int ECORE_VLAN_MAC_ADD ;
 int ECORE_VLAN_MAC_MOVE ;
 int FALSE ;
 int TRUE ;
 int ecore_vlan_mac_set_cmd_hdr_e2 (struct bxe_softc*,struct ecore_vlan_mac_obj*,int,int ,int *) ;
 int ecore_vlan_mac_set_rdata_hdr_e2 (int ,int ,int *,int) ;

__attribute__((used)) static void ecore_set_one_vlan_e2(struct bxe_softc *sc,
      struct ecore_vlan_mac_obj *o,
      struct ecore_exeq_elem *elem, int rule_idx,
      int cam_offset)
{
 struct ecore_raw_obj *raw = &o->raw;
 struct eth_classify_rules_ramrod_data *data =
  (struct eth_classify_rules_ramrod_data *)(raw->rdata);
 int rule_cnt = rule_idx + 1;
 union eth_classify_rule_cmd *rule_entry = &data->rules[rule_idx];
 enum ecore_vlan_mac_cmd cmd = elem->cmd_data.vlan_mac.cmd;
 bool add = (cmd == ECORE_VLAN_MAC_ADD) ? TRUE : FALSE;
 uint16_t vlan = elem->cmd_data.vlan_mac.u.vlan.vlan;


 if (rule_idx == 0)
  ECORE_MEMSET(data, 0, sizeof(*data));


 ecore_vlan_mac_set_cmd_hdr_e2(sc, o, add, CLASSIFY_RULE_OPCODE_VLAN,
          &rule_entry->vlan.header);

 ECORE_MSG(sc, "About to %s VLAN %d\n", (add ? "add" : "delete"),
    vlan);


 rule_entry->vlan.vlan = ECORE_CPU_TO_LE16(vlan);


 if (cmd == ECORE_VLAN_MAC_MOVE) {
  rule_entry++;
  rule_cnt++;


  ecore_vlan_mac_set_cmd_hdr_e2(sc,
     elem->cmd_data.vlan_mac.target_obj,
           TRUE, CLASSIFY_RULE_OPCODE_VLAN,
           &rule_entry->vlan.header);


  rule_entry->vlan.vlan = ECORE_CPU_TO_LE16(vlan);
 }




 ecore_vlan_mac_set_rdata_hdr_e2(raw->cid, raw->state, &data->header,
     rule_cnt);
}
