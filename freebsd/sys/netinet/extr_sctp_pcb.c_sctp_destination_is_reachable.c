
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
struct sctp_tcb {struct sctp_inpcb* sctp_ep; } ;
struct TYPE_3__ {int inp_vflag; } ;
struct TYPE_4__ {TYPE_1__ inp; } ;
struct sctp_inpcb {int sctp_flags; TYPE_2__ ip_inp; } ;




 int INP_IPV4 ;
 int INP_IPV6 ;
 int SCTP_PCB_FLAGS_BOUNDALL ;

int
sctp_destination_is_reachable(struct sctp_tcb *stcb, struct sockaddr *destaddr)
{
 struct sctp_inpcb *inp;
 int answer;
 inp = stcb->sctp_ep;
 if (inp->sctp_flags & SCTP_PCB_FLAGS_BOUNDALL) {






  return (1);
 }

 switch (destaddr->sa_family) {
 default:

  answer = 0;
  break;
 }
 return (answer);
}
