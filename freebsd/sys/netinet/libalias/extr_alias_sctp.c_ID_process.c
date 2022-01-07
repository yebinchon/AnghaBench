
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* Init; } ;
struct sctp_nat_msg {int msg; TYPE_4__* ip_hdr; TYPE_3__ sctpchnk; TYPE_1__* sctp_hdr; } ;
struct sctp_nat_assoc {int exp; int state; int TableRegister; int l_vtag; int g_port; int l_port; int a_addr; int l_addr; int g_vtag; } ;
struct libalias {int dummy; } ;
struct TYPE_8__ {int ip_src; int ip_dst; } ;
struct TYPE_6__ {int initiate_tag; } ;
struct TYPE_5__ {int src_port; int dest_port; } ;


 int AddGlobalIPAddresses (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ;
 int AddSctpAssocGlobal (struct libalias*,struct sctp_nat_assoc*) ;
 int AddSctpAssocLocal (struct libalias*,struct sctp_nat_assoc*,int ) ;
 int FindAliasAddress (struct libalias*,int ) ;
 int FindSctpRedirectAddress (struct libalias*,struct sctp_nat_msg*) ;
 int GetAsconfVtags (struct libalias*,struct sctp_nat_msg*,int *,int *,int) ;
 int SN_DROP_PKT ;
 int SN_INa ;
 int SN_INi ;
 int SN_I_T (struct libalias*) ;
 int SN_NAT_PKT ;
 int SN_REPLY_ABORT ;
 int SN_REPLY_ERROR ;




 int SN_WAIT_TOGLOBAL ;
 int SN_WAIT_TOLOCAL ;
 int sctp_AddTimeOut (struct libalias*,struct sctp_nat_assoc*) ;
 int sysctl_accept_global_ootb_addip ;
 int sysctl_track_global_addresses ;

__attribute__((used)) static int
ID_process(struct libalias *la, int direction, struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
 switch (sm->msg) {
 case 131:
  if (!sysctl_accept_global_ootb_addip && (direction == 128))
   return (SN_DROP_PKT);

  if (!GetAsconfVtags(la, sm, &(assoc->l_vtag), &(assoc->g_vtag), direction))
   return (SN_DROP_PKT);

 case 130:
  if (sysctl_track_global_addresses)
   AddGlobalIPAddresses(sm, assoc, direction);
  switch (direction) {
  case 129:
   assoc->l_addr = sm->ip_hdr->ip_src;
   assoc->a_addr = FindAliasAddress(la, assoc->l_addr);
   assoc->l_port = sm->sctp_hdr->src_port;
   assoc->g_port = sm->sctp_hdr->dest_port;
   if (sm->msg == 130)
    assoc->g_vtag = sm->sctpchnk.Init->initiate_tag;
   if (AddSctpAssocGlobal(la, assoc))
    return ((sm->msg == 130) ? SN_REPLY_ABORT : SN_REPLY_ERROR);
   if (sm->msg == 131) {
    if (AddSctpAssocLocal(la, assoc, sm->ip_hdr->ip_dst))
     return (SN_REPLY_ERROR);
    assoc->TableRegister |= SN_WAIT_TOLOCAL;
   }
  break;
  case 128:
   assoc->l_addr = FindSctpRedirectAddress(la, sm);
   assoc->a_addr = sm->ip_hdr->ip_dst;
   assoc->l_port = sm->sctp_hdr->dest_port;
   assoc->g_port = sm->sctp_hdr->src_port;
   if (sm->msg == 130)
    assoc->l_vtag = sm->sctpchnk.Init->initiate_tag;
   if (AddSctpAssocLocal(la, assoc, sm->ip_hdr->ip_src))
    return ((sm->msg == 130) ? SN_REPLY_ABORT : SN_REPLY_ERROR);
   if (sm->msg == 131) {
    if (AddSctpAssocGlobal(la, assoc))
     return (SN_REPLY_ERROR);
    assoc->TableRegister |= SN_WAIT_TOGLOBAL;
     }
   break;
  }
  assoc->state = (sm->msg == 130) ? SN_INi : SN_INa;
  assoc->exp = SN_I_T(la);
  sctp_AddTimeOut(la,assoc);
  return (SN_NAT_PKT);
 default:
  return (SN_DROP_PKT);
 }
 return (SN_DROP_PKT);
}
