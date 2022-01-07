
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 int ENXIO ;
 int IPFW_ADD_OBJ_REWRITER (int,int ) ;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 scalar_t__ V_nat64lsn_eid ;
 scalar_t__ ipfw_add_eaction (struct ip_fw_chain*,int ,char*) ;
 int ipfw_nat64lsn ;
 int nat64lsn_init_internal () ;
 int opcodes ;
 int scodes ;

int
nat64lsn_init(struct ip_fw_chain *ch, int first)
{

 if (first != 0)
  nat64lsn_init_internal();
 V_nat64lsn_eid = ipfw_add_eaction(ch, ipfw_nat64lsn, "nat64lsn");
 if (V_nat64lsn_eid == 0)
  return (ENXIO);
 IPFW_ADD_SOPT_HANDLER(first, scodes);
 IPFW_ADD_OBJ_REWRITER(first, opcodes);
 return (0);
}
