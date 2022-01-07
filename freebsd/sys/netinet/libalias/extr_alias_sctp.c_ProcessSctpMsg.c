
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nat_msg {int dummy; } ;
struct sctp_nat_assoc {int state; } ;
struct libalias {int dummy; } ;


 int CL_process (struct libalias*,int,struct sctp_nat_assoc*,struct sctp_nat_msg*) ;
 int ID_process (struct libalias*,int,struct sctp_nat_assoc*,struct sctp_nat_msg*) ;
 int INa_process (struct libalias*,int,struct sctp_nat_assoc*,struct sctp_nat_msg*) ;
 int INi_process (struct libalias*,int,struct sctp_nat_assoc*,struct sctp_nat_msg*) ;




 int SN_NAT_PKT ;
 int SN_PROCESSING_ERROR ;
 int SN_RM ;

 int UP_process (struct libalias*,int,struct sctp_nat_assoc*,struct sctp_nat_msg*) ;

__attribute__((used)) static int
ProcessSctpMsg(struct libalias *la, int direction, struct sctp_nat_msg *sm, struct sctp_nat_assoc *assoc)
{
 int rtnval;

 switch (assoc->state) {
 case 131:
  rtnval = ID_process(la, direction, assoc, sm);
  if (rtnval != SN_NAT_PKT) {
   assoc->state = SN_RM;
  }
  return (rtnval);
 case 129:
  return (INi_process(la, direction, assoc, sm));
 case 130:
  return (INa_process(la, direction, assoc, sm));
 case 128:
  return (UP_process(la, direction, assoc, sm));
 case 132:
  return (CL_process(la, direction, assoc, sm));
 }
 return (SN_PROCESSING_ERROR);
}
