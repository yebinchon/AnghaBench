
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tables_config {int algo_count; struct table_algo** def_algo; struct table_algo** algo; } ;
struct table_algo {size_t type; } ;
struct ip_fw_chain {int dummy; } ;


 struct tables_config* CHAIN_TO_TCFG (struct ip_fw_chain*) ;
 int KASSERT (int,char*) ;
 int M_IPFW ;
 int free (struct table_algo*,int ) ;

void
ipfw_del_table_algo(struct ip_fw_chain *ch, int idx)
{
 struct tables_config *tcfg;
 struct table_algo *ta;

 tcfg = CHAIN_TO_TCFG(ch);

 KASSERT(idx <= tcfg->algo_count, ("algo idx %d out of range 1..%d",
     idx, tcfg->algo_count));

 ta = tcfg->algo[idx];
 KASSERT(ta != ((void*)0), ("algo idx %d is NULL", idx));

 if (tcfg->def_algo[ta->type] == ta)
  tcfg->def_algo[ta->type] = ((void*)0);

 free(ta, M_IPFW);
}
