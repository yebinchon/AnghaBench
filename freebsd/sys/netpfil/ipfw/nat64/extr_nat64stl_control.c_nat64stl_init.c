
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 int ENXIO ;
 int IPFW_ADD_OBJ_REWRITER (int,int ) ;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 scalar_t__ V_nat64stl_eid ;
 scalar_t__ ipfw_add_eaction (struct ip_fw_chain*,int ,char*) ;
 int ipfw_nat64stl ;
 int opcodes ;
 int scodes ;

int
nat64stl_init(struct ip_fw_chain *ch, int first)
{

 V_nat64stl_eid = ipfw_add_eaction(ch, ipfw_nat64stl, "nat64stl");
 if (V_nat64stl_eid == 0)
  return (ENXIO);
 IPFW_ADD_SOPT_HANDLER(first, scodes);
 IPFW_ADD_OBJ_REWRITER(first, opcodes);
 return (0);
}
