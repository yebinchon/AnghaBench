
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ip_fw_chain {int dummy; } ;
typedef enum ipfw_sets_cmd { ____Placeholder_ipfw_sets_cmd } ipfw_sets_cmd ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_TLV_NAT64LSN_NAME ;
 int ipfw_obj_manage_sets (int ,int ,int ,int ,int) ;

__attribute__((used)) static int
nat64lsn_manage_sets(struct ip_fw_chain *ch, uint16_t set, uint8_t new_set,
    enum ipfw_sets_cmd cmd)
{

 return (ipfw_obj_manage_sets(CHAIN_TO_SRV(ch), IPFW_TLV_NAT64LSN_NAME,
     set, new_set, cmd));
}
