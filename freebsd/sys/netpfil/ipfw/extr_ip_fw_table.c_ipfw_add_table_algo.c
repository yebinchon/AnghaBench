
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tables_config {int algo_count; struct table_algo** def_algo; struct table_algo** algo; } ;
struct table_algo {scalar_t__ type; size_t idx; int flags; int ta_buf_size; } ;
struct ip_fw_chain {int dummy; } ;


 struct tables_config* CHAIN_TO_TCFG (struct ip_fw_chain*) ;
 int EINVAL ;
 scalar_t__ IPFW_TABLE_MAXTYPE ;
 int KASSERT (int,char*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 size_t TA_BUF_SZ ;
 int TA_FLAG_DEFAULT ;
 struct table_algo* malloc (int,int ,int) ;
 int memcpy (struct table_algo*,struct table_algo*,size_t) ;
 size_t roundup2 (int ,int) ;

int
ipfw_add_table_algo(struct ip_fw_chain *ch, struct table_algo *ta, size_t size,
    int *idx)
{
 struct tables_config *tcfg;
 struct table_algo *ta_new;
 size_t sz;

 if (size > sizeof(struct table_algo))
  return (EINVAL);


 sz = roundup2(ta->ta_buf_size, sizeof(void *));
 if (sz > TA_BUF_SZ)
  return (EINVAL);

 KASSERT(ta->type <= IPFW_TABLE_MAXTYPE,("Increase IPFW_TABLE_MAXTYPE"));


 ta_new = malloc(sizeof(struct table_algo), M_IPFW, M_WAITOK | M_ZERO);
 memcpy(ta_new, ta, size);

 tcfg = CHAIN_TO_TCFG(ch);

 KASSERT(tcfg->algo_count < 255, ("Increase algo array size"));

 tcfg->algo[++tcfg->algo_count] = ta_new;
 ta_new->idx = tcfg->algo_count;


 if ((ta_new->flags & TA_FLAG_DEFAULT) != 0 &&
     tcfg->def_algo[ta_new->type] == ((void*)0))
  tcfg->def_algo[ta_new->type] = ta_new;

 *idx = ta_new->idx;

 return (0);
}
