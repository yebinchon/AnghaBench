
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ti ;
struct tid_info {int ti; struct sockopt_data* sd; struct table_config* tc; struct ip_fw_chain* ch; int uidx; } ;
struct TYPE_3__ {int kidx; int subtype; } ;
struct table_config {int astate; struct table_algo* ta; TYPE_1__ no; } ;
struct table_algo {int (* foreach ) (int ,int ,int ,struct tid_info*) ;} ;
struct sockopt_data {size_t valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int ti; struct sockopt_data* sd; struct table_config* tc; struct ip_fw_chain* ch; int uidx; } ;
struct TYPE_4__ {size_t cnt; size_t size; int tbl; int type; } ;
typedef TYPE_2__ ipfw_xtable ;
typedef int ipfw_table_xentry ;
typedef int ip_fw3_opheader ;
typedef int da ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int dump_table_xentry ;
 struct table_config* find_table (int ,struct tid_info*) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int memset (struct tid_info*,int ,int) ;
 int stub1 (int ,int ,int ,struct tid_info*) ;
 size_t table_get_count (struct ip_fw_chain*,struct table_config*) ;

__attribute__((used)) static int
dump_table_v0(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_xtable *xtbl;
 struct tid_info ti;
 struct table_config *tc;
 struct table_algo *ta;
 struct dump_args da;
 size_t sz, count;

 xtbl = (ipfw_xtable *)ipfw_get_sopt_header(sd, sizeof(ipfw_xtable));
 if (xtbl == ((void*)0))
  return (EINVAL);

 memset(&ti, 0, sizeof(ti));
 ti.uidx = xtbl->tbl;

 IPFW_UH_RLOCK(ch);
 if ((tc = find_table(CHAIN_TO_NI(ch), &ti)) == ((void*)0)) {
  IPFW_UH_RUNLOCK(ch);
  return (0);
 }
 count = table_get_count(ch, tc);
 sz = count * sizeof(ipfw_table_xentry) + sizeof(ipfw_xtable);

 xtbl->cnt = count;
 xtbl->size = sz;
 xtbl->type = tc->no.subtype;
 xtbl->tbl = ti.uidx;

 if (sd->valsize < sz) {







  IPFW_UH_RUNLOCK(ch);
  return (ENOMEM);
 }


 memset(&da, 0, sizeof(da));
 da.ch = ch;
 da.ti = KIDX_TO_TI(ch, tc->no.kidx);
 da.tc = tc;
 da.sd = sd;

 ta = tc->ta;

 ta->foreach(tc->astate, da.ti, dump_table_xentry, &da);
 IPFW_UH_RUNLOCK(ch);

 return (0);
}
