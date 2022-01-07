
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_4__ {int port; } ;
struct sctp_tcb {TYPE_2__ asoc; struct sctp_inpcb* sctp_ep; } ;
struct sctp_inpcb {int dummy; } ;
typedef scalar_t__ caddr_t ;




 int EINVAL ;
 int ENOBUFS ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int INADDR_BROADCAST ;
 int IN_MULTICAST (int ) ;
 int SCTP_ADDR_IS_CONFIRMED ;
 int SCTP_DONOT_SETSCOPE ;
 scalar_t__ SCTP_FROM_SCTPUTIL ;
 scalar_t__ SCTP_LOC_10 ;
 scalar_t__ SCTP_LOC_7 ;
 scalar_t__ SCTP_LOC_8 ;
 scalar_t__ SCTP_LOC_9 ;
 int SCTP_LTRACE_ERR_RET (int *,struct sctp_tcb*,int *,scalar_t__,int) ;
 int SCTP_NORMAL_PROC ;
 int ntohl (int ) ;
 int sctp_add_remote_addr (struct sctp_tcb*,struct sockaddr*,int *,int ,int ,int ) ;
 int sctp_free_assoc (struct sctp_inpcb*,struct sctp_tcb*,int ,scalar_t__) ;

int
sctp_connectx_helper_add(struct sctp_tcb *stcb, struct sockaddr *addr,
    int totaddr, int *error)
{
 int added = 0;
 int i;
 struct sctp_inpcb *inp;
 struct sockaddr *sa;
 size_t incr = 0;







 sa = addr;
 inp = stcb->sctp_ep;
 *error = 0;
 for (i = 0; i < totaddr; i++) {
  switch (sa->sa_family) {
  default:
   break;
  }
  sa = (struct sockaddr *)((caddr_t)sa + incr);
 }
out_now:
 return (added);
}
