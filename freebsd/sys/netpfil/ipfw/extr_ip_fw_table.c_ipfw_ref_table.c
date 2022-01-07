
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct tid_info {int dummy; } ;
struct TYPE_2__ {int kidx; } ;
struct table_config {TYPE_1__ no; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_obj_ntlv ;


 int CHAIN_TO_NI (struct ip_fw_chain*) ;
 int ESRCH ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int find_table_err (int ,struct tid_info*,struct table_config**) ;
 int ntlv_to_ti (int *,struct tid_info*) ;
 int tc_ref (struct table_config*) ;

int
ipfw_ref_table(struct ip_fw_chain *ch, ipfw_obj_ntlv *ntlv, uint16_t *kidx)
{
 struct tid_info ti;
 struct table_config *tc;
 int error;

 IPFW_UH_WLOCK_ASSERT(ch);

 ntlv_to_ti(ntlv, &ti);
 error = find_table_err(CHAIN_TO_NI(ch), &ti, &tc);
 if (error != 0)
  return (error);

 if (tc == ((void*)0))
  return (ESRCH);

 tc_ref(tc);
 *kidx = tc->no.kidx;

 return (0);
}
