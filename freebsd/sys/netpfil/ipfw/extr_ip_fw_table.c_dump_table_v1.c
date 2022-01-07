
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct tid_info {int dummy; } ;
struct TYPE_4__ {int kidx; } ;
struct table_config {int astate; struct table_algo* ta; TYPE_1__ no; } ;
struct table_algo {int (* foreach ) (int ,int ,int ,struct dump_args*) ;} ;
struct sockopt_data {scalar_t__ valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int error; int ti; struct sockopt_data* sd; struct table_config* tc; struct ip_fw_chain* ch; } ;
struct _ipfw_obj_header {int dummy; } ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_2__ ipfw_xtable_info ;
typedef int ipfw_obj_header ;
typedef int ip_fw3_opheader ;
typedef int da ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int dump_table_tentry ;
 int export_table_info (struct ip_fw_chain*,struct table_config*,TYPE_2__*) ;
 struct table_config* find_table (int ,struct tid_info*) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int memset (struct dump_args*,int ,int) ;
 int objheader_to_ti (struct _ipfw_obj_header*,struct tid_info*) ;
 int stub1 (int ,int ,int ,struct dump_args*) ;

__attribute__((used)) static int
dump_table_v1(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 struct _ipfw_obj_header *oh;
 ipfw_xtable_info *i;
 struct tid_info ti;
 struct table_config *tc;
 struct table_algo *ta;
 struct dump_args da;
 uint32_t sz;

 sz = sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info);
 oh = (struct _ipfw_obj_header *)ipfw_get_sopt_header(sd, sz);
 if (oh == ((void*)0))
  return (EINVAL);

 i = (ipfw_xtable_info *)(oh + 1);
 objheader_to_ti(oh, &ti);

 IPFW_UH_RLOCK(ch);
 if ((tc = find_table(CHAIN_TO_NI(ch), &ti)) == ((void*)0)) {
  IPFW_UH_RUNLOCK(ch);
  return (ESRCH);
 }
 export_table_info(ch, tc, i);

 if (sd->valsize < i->size) {







  IPFW_UH_RUNLOCK(ch);
  return (ENOMEM);
 }




 memset(&da, 0, sizeof(da));
 da.ch = ch;
 da.ti = KIDX_TO_TI(ch, tc->no.kidx);
 da.tc = tc;
 da.sd = sd;

 ta = tc->ta;

 ta->foreach(tc->astate, da.ti, dump_table_tentry, &da);
 IPFW_UH_RUNLOCK(ch);

 return (da.error);
}
