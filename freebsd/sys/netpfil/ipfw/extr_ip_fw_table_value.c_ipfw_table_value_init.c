
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tables_config {int val_size; int valhash; } ;
struct table_value {int dummy; } ;
struct ip_fw_chain {struct tables_config* tblcfg; int valuestate; } ;


 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int VALDATA_START_SIZE ;
 int cmp_table_value ;
 int hash_table_value ;
 int ipfw_objhash_create (int) ;
 int ipfw_objhash_set_funcs (int ,int ,int ) ;
 int malloc (int,int ,int) ;
 int scodes ;

void
ipfw_table_value_init(struct ip_fw_chain *ch, int first)
{
 struct tables_config *tcfg;

 ch->valuestate = malloc(VALDATA_START_SIZE * sizeof(struct table_value),
     M_IPFW, M_WAITOK | M_ZERO);

 tcfg = ch->tblcfg;

 tcfg->val_size = VALDATA_START_SIZE;
 tcfg->valhash = ipfw_objhash_create(tcfg->val_size);
 ipfw_objhash_set_funcs(tcfg->valhash, hash_table_value,
     cmp_table_value);

 IPFW_ADD_SOPT_HANDLER(first, scodes);
}
