
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ip_fw_chain {int dummy; } ;
typedef enum ipfw_sets_cmd { ____Placeholder_ipfw_sets_cmd } ipfw_sets_cmd ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;

 int EOPNOTSUPP ;
 int IPFW_TLV_TBL_NAME ;





 int V_fw_tables_sets ;
 int ipfw_obj_manage_sets (int ,int ,int ,int ,int) ;

__attribute__((used)) static int
table_manage_sets(struct ip_fw_chain *ch, uint16_t set, uint8_t new_set,
    enum ipfw_sets_cmd cmd)
{

 switch (cmd) {
 case 130:
 case 129:
 case 132:




  return (0);
 case 128:
 case 131:





  if (V_fw_tables_sets == 0)
   return (0);
  break;
 case 133:





  if (V_fw_tables_sets == 0)
   return (EOPNOTSUPP);
 }

 return (ipfw_obj_manage_sets(CHAIN_TO_NI(ch), IPFW_TLV_TBL_NAME,
     set, new_set, cmd));
}
