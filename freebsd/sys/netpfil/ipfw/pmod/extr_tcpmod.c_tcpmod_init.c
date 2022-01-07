
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 int ENXIO ;
 scalar_t__ V_tcpmod_setmss_eid ;
 scalar_t__ ipfw_add_eaction (struct ip_fw_chain*,int ,char*) ;
 int ipfw_tcpmod ;

int
tcpmod_init(struct ip_fw_chain *ch, int first)
{

 V_tcpmod_setmss_eid = ipfw_add_eaction(ch, ipfw_tcpmod, "tcp-setmss");
 if (V_tcpmod_setmss_eid == 0)
  return (ENXIO);
 return (0);
}
