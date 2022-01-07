
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sctp_inpcb {int * sctp_socket; } ;
struct mbuf {int dummy; } ;


 int EINVAL ;
 int SCTP_FROM_SCTP_OUTPUT ;
 int SCTP_LTRACE_ERR_RET_PKT (struct mbuf*,struct sctp_inpcb*,int *,int *,int ,int) ;
 int sctp_sosend (int *,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct thread*) ;

int
sctp_output(
    struct sctp_inpcb *inp,
    struct mbuf *m,
    struct sockaddr *addr,
    struct mbuf *control,
    struct thread *p,
    int flags)
{
 if (inp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET_PKT(m, inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_OUTPUT, EINVAL);
  return (EINVAL);
 }

 if (inp->sctp_socket == ((void*)0)) {
  SCTP_LTRACE_ERR_RET_PKT(m, inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_OUTPUT, EINVAL);
  return (EINVAL);
 }
 return (sctp_sosend(inp->sctp_socket,
     addr,
     (struct uio *)((void*)0),
     m,
     control,
     flags, p
     ));
}
