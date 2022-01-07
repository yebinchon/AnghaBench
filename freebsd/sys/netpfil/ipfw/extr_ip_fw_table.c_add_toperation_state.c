
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tables_config {int state_list; } ;
struct tableop_state {int opstate; } ;
struct ip_fw_chain {int dummy; } ;


 struct tables_config* CHAIN_TO_TCFG (struct ip_fw_chain*) ;
 int TAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;

void
add_toperation_state(struct ip_fw_chain *ch, struct tableop_state *ts)
{
 struct tables_config *tcfg;

 tcfg = CHAIN_TO_TCFG(ch);
 TAILQ_INSERT_HEAD(&tcfg->state_list, &ts->opstate, next);
}
