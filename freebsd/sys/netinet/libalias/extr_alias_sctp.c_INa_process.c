
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_msg {int msg; } ;
struct sctp_nat_assoc {int TableRegister; void* state; } ;
struct libalias {int dummy; } ;


 int IsASCONFack (struct libalias*,struct sctp_nat_msg*,int) ;
 int SN_BOTH_TBL ;
 int SN_DROP_PKT ;
 int SN_I_T (struct libalias*) ;
 int SN_NAT_PKT ;
 void* SN_RM ;





 void* SN_UP ;
 int SN_U_T (struct libalias*) ;
 int SN_WAIT_TOGLOBAL ;
 int SN_WAIT_TOLOCAL ;
 int sctp_ResetTimeOut (struct libalias*,struct sctp_nat_assoc*,int ) ;

__attribute__((used)) static int
INa_process(struct libalias *la, int direction,struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
 switch (sm->msg) {
 case 131:
  sctp_ResetTimeOut(la,assoc, SN_I_T(la));
  return (SN_NAT_PKT);
 case 130:
  switch (direction) {
  case 128:
   if (!(assoc->TableRegister & SN_WAIT_TOLOCAL))
    return (SN_DROP_PKT);
   break;
  case 129:
   if (!(assoc->TableRegister & SN_WAIT_TOGLOBAL))
    return (SN_DROP_PKT);
  }
  if (IsASCONFack(la,sm,direction)) {
   assoc->TableRegister &= SN_BOTH_TBL;
   assoc->state = SN_UP;
   sctp_ResetTimeOut(la,assoc, SN_U_T(la));
   return (SN_NAT_PKT);
  } else {
   assoc->state = SN_RM;
   return (SN_NAT_PKT);
  }
 case 132:
  assoc->state = SN_RM;
  return (SN_NAT_PKT);
 default:
  return (SN_DROP_PKT);
 }
 return (SN_DROP_PKT);
}
