
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_msg {int msg; } ;
 int SctpAliasLog (char*,char*,char*) ;

__attribute__((used)) static void
logsctpparse(int direction, struct sctp_nat_msg *sm)
{
 char *ploc, *pstate;
 switch (direction) {
 case 128:
  ploc = "TO_LOCAL -";
  break;
 case 129:
  ploc = "TO_GLOBAL -";
  break;
 default:
  ploc = "";
 }
 switch (sm->msg) {
 case 134:
  pstate = "Init";
  break;
 case 133:
  pstate = "InitAck";
  break;
 case 137:
  pstate = "Abort";
  break;
 case 131:
  pstate = "ShutAck";
  break;
 case 130:
  pstate = "ShutComp";
  break;
 case 136:
  pstate = "Asconf";
  break;
 case 135:
  pstate = "AsconfAck";
  break;
 case 132:
  pstate = "Other";
  break;
 default:
  pstate = "***ERROR***";
  break;
 }
 SctpAliasLog("Parsed: %s %s\n", ploc, pstate);
}
