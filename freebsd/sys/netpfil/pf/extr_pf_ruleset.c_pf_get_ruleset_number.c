
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
 int PF_RULESET_BINAT ;
 int PF_RULESET_FILTER ;
 int PF_RULESET_MAX ;
 int PF_RULESET_NAT ;
 int PF_RULESET_RDR ;
 int PF_RULESET_SCRUB ;


int
pf_get_ruleset_number(u_int8_t action)
{
 switch (action) {
 case 128:
 case 131:
  return (PF_RULESET_SCRUB);
  break;
 case 130:
 case 136:
  return (PF_RULESET_FILTER);
  break;
 case 135:
 case 133:
  return (PF_RULESET_NAT);
  break;
 case 137:
 case 134:
  return (PF_RULESET_BINAT);
  break;
 case 129:
 case 132:
  return (PF_RULESET_RDR);
  break;
 default:
  return (PF_RULESET_MAX);
  break;
 }
}
