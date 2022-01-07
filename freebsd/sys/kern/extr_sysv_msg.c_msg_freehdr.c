
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msg {scalar_t__ msg_ts; size_t msg_spot; struct msg* msg_next; } ;
struct TYPE_4__ {size_t msgseg; scalar_t__ msgssz; } ;
struct TYPE_3__ {short next; } ;


 struct msg* free_msghdrs ;
 short free_msgmaps ;
 int mac_sysvmsg_cleanup (struct msg*) ;
 TYPE_2__ msginfo ;
 TYPE_1__* msgmaps ;
 int nfree_msgmaps ;
 int panic (char*) ;

__attribute__((used)) static void
msg_freehdr(struct msg *msghdr)
{
 while (msghdr->msg_ts > 0) {
  short next;
  if (msghdr->msg_spot < 0 || msghdr->msg_spot >= msginfo.msgseg)
   panic("msghdr->msg_spot out of range");
  next = msgmaps[msghdr->msg_spot].next;
  msgmaps[msghdr->msg_spot].next = free_msgmaps;
  free_msgmaps = msghdr->msg_spot;
  nfree_msgmaps++;
  msghdr->msg_spot = next;
  if (msghdr->msg_ts >= msginfo.msgssz)
   msghdr->msg_ts -= msginfo.msgssz;
  else
   msghdr->msg_ts = 0;
 }
 if (msghdr->msg_spot != -1)
  panic("msghdr->msg_spot != -1");
 msghdr->msg_next = free_msghdrs;
 free_msghdrs = msghdr;



}
