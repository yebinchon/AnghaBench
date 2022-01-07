
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_msg {int msg; } ;
struct sctp_nat_assoc {void* state; } ;
struct libalias {int dummy; } ;


 void* SN_CL ;
 int SN_C_T (struct libalias*) ;
 int SN_DROP_PKT ;
 int SN_NAT_PKT ;
 void* SN_RM ;



 int SN_X_T (struct libalias*) ;
 int sctp_ResetTimeOut (struct libalias*,struct sctp_nat_assoc*,int ) ;
 int sysctl_holddown_timer ;

__attribute__((used)) static int
CL_process(struct libalias *la, int direction,struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
 switch (sm->msg) {
 case 128:
  assoc->state = SN_CL;
  if (sysctl_holddown_timer > 0)
   sctp_ResetTimeOut(la, assoc, SN_X_T(la));
  else
   assoc->state = SN_RM;
  return (SN_NAT_PKT);
 case 129:
  assoc->state = SN_CL;
  sctp_ResetTimeOut(la, assoc, SN_C_T(la));
  return (SN_NAT_PKT);
 case 130:
  assoc->state = SN_RM;
  return (SN_NAT_PKT);
 default:
  return (SN_DROP_PKT);
 }
 return (SN_DROP_PKT);
}
