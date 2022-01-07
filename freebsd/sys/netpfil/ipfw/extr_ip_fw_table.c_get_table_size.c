
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ti ;
struct tid_info {int uidx; } ;
struct sockopt_data {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int ipfw_count_xtable (struct ip_fw_chain*,struct tid_info*,int *) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,size_t) ;
 int memset (struct tid_info*,int ,int) ;

__attribute__((used)) static int
get_table_size(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 uint32_t *tbl;
 struct tid_info ti;
 size_t sz;
 int error;

 sz = sizeof(*op3) + sizeof(uint32_t);
 op3 = (ip_fw3_opheader *)ipfw_get_sopt_header(sd, sz);
 if (op3 == ((void*)0))
  return (EINVAL);

 tbl = (uint32_t *)(op3 + 1);
 memset(&ti, 0, sizeof(ti));
 ti.uidx = *tbl;
 IPFW_UH_RLOCK(ch);
 error = ipfw_count_xtable(ch, &ti, tbl);
 IPFW_UH_RUNLOCK(ch);
 return (error);
}
