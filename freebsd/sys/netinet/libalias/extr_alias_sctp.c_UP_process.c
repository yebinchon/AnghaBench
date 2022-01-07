
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_msg {int msg; } ;
struct sctp_nat_assoc {int num_Gaddr; int state; } ;
struct libalias {int dummy; } ;


 int AddGlobalIPAddresses (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ;
 int IsADDorDEL (struct libalias*,struct sctp_nat_msg*,int) ;
 int RmGlobalIPAddresses (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ;


 int SN_CL ;
 int SN_C_T (struct libalias*) ;
 int SN_DROP_PKT ;
 int SN_NAT_PKT ;
 int SN_RM ;



 int SN_TO_LOCAL ;
 int SN_U_T (struct libalias*) ;
 int sctp_ResetTimeOut (struct libalias*,struct sctp_nat_assoc*,int ) ;

__attribute__((used)) static int
UP_process(struct libalias *la, int direction, struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
 switch (sm->msg) {
 case 128:
  assoc->state = SN_CL;
  sctp_ResetTimeOut(la,assoc, SN_C_T(la));
  return (SN_NAT_PKT);
 case 130:
  assoc->state = SN_RM;
  return (SN_NAT_PKT);
 case 129:
  if ((direction == SN_TO_LOCAL) && assoc->num_Gaddr)
   switch (IsADDorDEL(la,sm,direction)) {
   case 132:
    AddGlobalIPAddresses(sm, assoc, direction);
    break;
   case 131:
    RmGlobalIPAddresses(sm, assoc, direction);
    break;
   }
 default:
  sctp_ResetTimeOut(la,assoc, SN_U_T(la));
  return (SN_NAT_PKT);
 }
 return (SN_DROP_PKT);
}
