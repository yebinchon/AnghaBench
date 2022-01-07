
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int tablestate; } ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int CHAIN_TO_TCFG (struct ip_fw_chain*) ;
 int IPFW_DEL_OBJ_REWRITER (int,int ) ;
 int IPFW_DEL_SOPT_HANDLER (int,int ) ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int destroy_table_locked ;
 int free (int ,int ) ;
 int ipfw_objhash_destroy (int ) ;
 int ipfw_objhash_foreach (int ,int ,struct ip_fw_chain*) ;
 int ipfw_table_algo_destroy (struct ip_fw_chain*) ;
 int ipfw_table_value_destroy (struct ip_fw_chain*,int) ;
 int opcodes ;
 int scodes ;

void
ipfw_destroy_tables(struct ip_fw_chain *ch, int last)
{

 IPFW_DEL_SOPT_HANDLER(last, scodes);
 IPFW_DEL_OBJ_REWRITER(last, opcodes);


 IPFW_UH_WLOCK(ch);
 IPFW_WLOCK(ch);
 ipfw_objhash_foreach(CHAIN_TO_NI(ch), destroy_table_locked, ch);
 IPFW_WUNLOCK(ch);
 IPFW_UH_WUNLOCK(ch);


 free(ch->tablestate, M_IPFW);

 ipfw_table_value_destroy(ch, last);
 ipfw_table_algo_destroy(ch);

 ipfw_objhash_destroy(CHAIN_TO_NI(ch));
 free(CHAIN_TO_TCFG(ch), M_IPFW);
}
