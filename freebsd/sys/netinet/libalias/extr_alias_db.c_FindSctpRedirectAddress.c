
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_nat_msg {TYPE_4__* ip_hdr; TYPE_1__* sctp_hdr; } ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct libalias {TYPE_3__ targetAddress; TYPE_2__ aliasAddress; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct alias_link {struct in_addr src_addr; } ;
struct TYPE_8__ {int ip_dst; int ip_src; } ;
struct TYPE_5__ {int dest_port; } ;


 struct alias_link* FindLinkIn (struct libalias*,int ,int ,int ,int ,int ,int) ;
 struct in_addr FindOriginalAddress (struct libalias*,int ) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_SCTP ;
 int NO_DEST_PORT ;

struct in_addr
FindSctpRedirectAddress(struct libalias *la, struct sctp_nat_msg *sm)
{
 struct alias_link *lnk;
 struct in_addr redir;

 LIBALIAS_LOCK_ASSERT(la);
 lnk = FindLinkIn(la, sm->ip_hdr->ip_src, sm->ip_hdr->ip_dst,
     sm->sctp_hdr->dest_port,sm->sctp_hdr->dest_port, LINK_SCTP, 1);
 if (lnk != ((void*)0)) {
  return(lnk->src_addr);
 } else {
  redir = FindOriginalAddress(la,sm->ip_hdr->ip_dst);
  if (redir.s_addr == la->aliasAddress.s_addr ||
      redir.s_addr == la->targetAddress.s_addr) {
   lnk = FindLinkIn(la, sm->ip_hdr->ip_src, sm->ip_hdr->ip_dst,
       NO_DEST_PORT, 0, LINK_SCTP, 1);
   if (lnk != ((void*)0))
    return(lnk->src_addr);
  }
  return(redir);
 }
}
