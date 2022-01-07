
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* Init; } ;
struct sctp_nat_msg {int msg; TYPE_3__ sctpchnk; TYPE_1__* ip_hdr; } ;
struct sctp_nat_assoc {void* state; int g_vtag; int l_addr; int l_vtag; int num_Gaddr; } ;
struct libalias {int dummy; } ;
struct TYPE_5__ {int initiate_tag; } ;
struct TYPE_4__ {int ip_src; } ;


 int AddGlobalIPAddresses (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ;
 int AddSctpAssocGlobal (struct libalias*,struct sctp_nat_assoc*) ;
 int AddSctpAssocLocal (struct libalias*,struct sctp_nat_assoc*,int ) ;
 int SN_DROP_PKT ;
 int SN_I_T (struct libalias*) ;
 int SN_NAT_PKT ;
 void* SN_RM ;



 int SN_SEND_ABORT ;


 void* SN_UP ;
 int SN_U_T (struct libalias*) ;
 int sctp_ResetTimeOut (struct libalias*,struct sctp_nat_assoc*,int ) ;

__attribute__((used)) static int
INi_process(struct libalias *la, int direction, struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
 switch (sm->msg) {
 case 131:
  sctp_ResetTimeOut(la, assoc, SN_I_T(la));
  return (SN_NAT_PKT);
 case 130:
  switch (direction) {
  case 128:
   if (assoc->num_Gaddr)
    AddGlobalIPAddresses(sm, assoc, direction);
   assoc->l_vtag = sm->sctpchnk.Init->initiate_tag;
   if (AddSctpAssocLocal(la, assoc, sm->ip_hdr->ip_src)) {
    assoc->state = SN_RM;
    return (SN_SEND_ABORT);
   }
   break;
  case 129:
   assoc->l_addr = sm->ip_hdr->ip_src;
   assoc->g_vtag = sm->sctpchnk.Init->initiate_tag;
   if (AddSctpAssocGlobal(la, assoc)) {
    assoc->state = SN_RM;
    return (SN_SEND_ABORT);
   }
   break;
  }
  assoc->state = SN_UP;
  sctp_ResetTimeOut(la,assoc, SN_U_T(la));
  return (SN_NAT_PKT);
 case 132:
  assoc->state = SN_RM;
  return (SN_NAT_PKT);
 default:
  return (SN_DROP_PKT);
 }
 return (SN_DROP_PKT);
}
