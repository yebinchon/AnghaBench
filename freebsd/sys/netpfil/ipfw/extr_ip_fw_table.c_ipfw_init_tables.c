
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tables_config {int namehash; } ;
struct table_info {int dummy; } ;
struct ip_fw_chain {struct tables_config* tblcfg; void* tablestate; } ;


 int IPFW_ADD_OBJ_REWRITER (int,int ) ;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int V_fw_tables_max ;
 int ipfw_objhash_create (int) ;
 int ipfw_table_algo_init (struct ip_fw_chain*) ;
 int ipfw_table_value_init (struct ip_fw_chain*,int) ;
 void* malloc (int,int ,int) ;
 int opcodes ;
 int scodes ;

int
ipfw_init_tables(struct ip_fw_chain *ch, int first)
{
 struct tables_config *tcfg;


 ch->tablestate = malloc(V_fw_tables_max * sizeof(struct table_info),
     M_IPFW, M_WAITOK | M_ZERO);

 tcfg = malloc(sizeof(struct tables_config), M_IPFW, M_WAITOK | M_ZERO);
 tcfg->namehash = ipfw_objhash_create(V_fw_tables_max);
 ch->tblcfg = tcfg;

 ipfw_table_value_init(ch, first);
 ipfw_table_algo_init(ch);

 IPFW_ADD_OBJ_REWRITER(first, opcodes);
 IPFW_ADD_SOPT_HANDLER(first, scodes);
 return (0);
}
