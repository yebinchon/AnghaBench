
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_DEL_OBJ_REWRITER (int,int ) ;
 int IPFW_DEL_SOPT_HANDLER (int,int ) ;
 int IPFW_TLV_NAT64STL_NAME ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 scalar_t__ V_nat64stl_eid ;
 int destroy_config_cb ;
 int ipfw_del_eaction (struct ip_fw_chain*,scalar_t__) ;
 int ipfw_objhash_foreach_type (int ,int ,struct ip_fw_chain*,int ) ;
 int opcodes ;
 int scodes ;

void
nat64stl_uninit(struct ip_fw_chain *ch, int last)
{

 IPFW_DEL_OBJ_REWRITER(last, opcodes);
 IPFW_DEL_SOPT_HANDLER(last, scodes);
 ipfw_del_eaction(ch, V_nat64stl_eid);







 IPFW_UH_WLOCK(ch);
 ipfw_objhash_foreach_type(CHAIN_TO_SRV(ch), destroy_config_cb, ch,
     IPFW_TLV_NAT64STL_NAME);
 V_nat64stl_eid = 0;
 IPFW_UH_WUNLOCK(ch);
}
