
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct table_config {int dummy; } ;
struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_header {int dummy; } ;
typedef int ipfw_xtable_info ;
typedef int ip_fw3_opheader ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EINVAL ;
 int ESRCH ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int export_table_info (struct ip_fw_chain*,struct table_config*,int *) ;
 struct table_config* find_table (int ,struct tid_info*) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,size_t) ;
 int objheader_to_ti (struct _ipfw_obj_header*,struct tid_info*) ;

__attribute__((used)) static int
describe_table(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 struct _ipfw_obj_header *oh;
 struct table_config *tc;
 struct tid_info ti;
 size_t sz;

 sz = sizeof(*oh) + sizeof(ipfw_xtable_info);
 oh = (struct _ipfw_obj_header *)ipfw_get_sopt_header(sd, sz);
 if (oh == ((void*)0))
  return (EINVAL);

 objheader_to_ti(oh, &ti);

 IPFW_UH_RLOCK(ch);
 if ((tc = find_table(CHAIN_TO_NI(ch), &ti)) == ((void*)0)) {
  IPFW_UH_RUNLOCK(ch);
  return (ESRCH);
 }

 export_table_info(ch, tc, (ipfw_xtable_info *)(oh + 1));
 IPFW_UH_RUNLOCK(ch);

 return (0);
}
