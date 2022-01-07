
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int StpPortState_blocking ;
 int StpPortState_broken ;
 int StpPortState_disabled ;
 int StpPortState_forwarding ;
 int StpPortState_learning ;
 int StpPortState_listening ;

__attribute__((used)) static int
state2snmp_st(uint8_t ifbr_state)
{
 switch (ifbr_state) {
  case 132:
   return (StpPortState_disabled);
  case 128:
   return (StpPortState_listening);
  case 129:
   return (StpPortState_learning);
  case 130:
   return (StpPortState_forwarding);
  case 133:
  case 131:
   return (StpPortState_blocking);
 }

 return (StpPortState_broken);
}
