
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int valuestate; } ;


 int CHAIN_TO_VI (struct ip_fw_chain*) ;
 int IPFW_DEL_SOPT_HANDLER (int,int ) ;
 int M_IPFW ;
 int destroy_value ;
 int free (int ,int ) ;
 int ipfw_objhash_destroy (int ) ;
 int ipfw_objhash_foreach (int ,int ,struct ip_fw_chain*) ;
 int scodes ;

void
ipfw_table_value_destroy(struct ip_fw_chain *ch, int last)
{

 IPFW_DEL_SOPT_HANDLER(last, scodes);

 free(ch->valuestate, M_IPFW);
 ipfw_objhash_foreach(CHAIN_TO_VI(ch), destroy_value, ch);
 ipfw_objhash_destroy(CHAIN_TO_VI(ch));
}
