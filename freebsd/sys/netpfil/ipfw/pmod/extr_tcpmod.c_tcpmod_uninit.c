
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 scalar_t__ V_tcpmod_setmss_eid ;
 int ipfw_del_eaction (struct ip_fw_chain*,scalar_t__) ;

void
tcpmod_uninit(struct ip_fw_chain *ch, int last)
{

 ipfw_del_eaction(ch, V_tcpmod_setmss_eid);
 V_tcpmod_setmss_eid = 0;
}
