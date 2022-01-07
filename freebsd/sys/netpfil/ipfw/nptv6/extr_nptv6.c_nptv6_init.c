
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 int ENXIO ;
 int IPFW_ADD_OBJ_REWRITER (int,int ) ;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 scalar_t__ V_nptv6_eid ;
 scalar_t__ ipfw_add_eaction (struct ip_fw_chain*,int ,char*) ;
 int ipfw_nptv6 ;
 int opcodes ;
 int scodes ;

int
nptv6_init(struct ip_fw_chain *ch, int first)
{

 V_nptv6_eid = ipfw_add_eaction(ch, ipfw_nptv6, "nptv6");
 if (V_nptv6_eid == 0)
  return (ENXIO);
 IPFW_ADD_SOPT_HANDLER(first, scodes);
 IPFW_ADD_OBJ_REWRITER(first, opcodes);
 return (0);
}
