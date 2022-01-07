
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ip_fw_rule {int cmd_len; int cmd; int id; int flags; int set; int rulenum; int act_ofs; } ;
struct ip_fw_bcounter {int dummy; } ;
struct ip_fw {int cmd_len; int cmd; int id; int flags; int set; int rulenum; int act_ofs; } ;
struct TYPE_2__ {int length; int type; } ;
typedef TYPE_1__ ipfw_obj_tlv ;
typedef scalar_t__ caddr_t ;


 int IPFW_TLV_RULE_ENT ;
 int export_cntr1_base (struct ip_fw*,struct ip_fw_bcounter*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
export_rule1(struct ip_fw *krule, caddr_t data, int len, int rcntrs)
{
 struct ip_fw_bcounter *cntr;
 struct ip_fw_rule *urule;
 ipfw_obj_tlv *tlv;


 tlv = (ipfw_obj_tlv *)data;
 tlv->type = IPFW_TLV_RULE_ENT;
 tlv->length = len;

 if (rcntrs != 0) {

  cntr = (struct ip_fw_bcounter *)(tlv + 1);
  urule = (struct ip_fw_rule *)(cntr + 1);
  export_cntr1_base(krule, cntr);
 } else
  urule = (struct ip_fw_rule *)(tlv + 1);


 urule->act_ofs = krule->act_ofs;
 urule->cmd_len = krule->cmd_len;
 urule->rulenum = krule->rulenum;
 urule->set = krule->set;
 urule->flags = krule->flags;
 urule->id = krule->id;


 memcpy(urule->cmd, krule->cmd, krule->cmd_len * sizeof(uint32_t));
}
