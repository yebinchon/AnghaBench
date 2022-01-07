
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * sb_mb; scalar_t__ sb_mbcnt; scalar_t__ sb_cc; } ;
struct TYPE_3__ {int * sb_mb; scalar_t__ sb_mbcnt; scalar_t__ sb_cc; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; scalar_t__ so_pcb; } ;
struct sctp_inpcb {int sctp_flags; } ;


 int EINVAL ;
 int PRU_FLUSH_RD ;
 int PRU_FLUSH_RDWR ;
 int PRU_FLUSH_WR ;
 int SCTP_FROM_SCTP_USRREQ ;
 int SCTP_INP_READ_LOCK (struct sctp_inpcb*) ;
 int SCTP_INP_READ_UNLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_RUNLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_WLOCK (struct sctp_inpcb*) ;
 int SCTP_INP_WUNLOCK (struct sctp_inpcb*) ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,int *,int *,int ,int) ;
 int SCTP_PCB_FLAGS_SOCKET_CANT_READ ;
 int SCTP_PCB_FLAGS_UDPTYPE ;

int
sctp_flush(struct socket *so, int how)
{






 struct sctp_inpcb *inp;

 inp = (struct sctp_inpcb *)so->so_pcb;
 if (inp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTP_USRREQ, EINVAL);
  return (EINVAL);
 }
 SCTP_INP_RLOCK(inp);

 if (inp->sctp_flags & SCTP_PCB_FLAGS_UDPTYPE) {
  SCTP_INP_RUNLOCK(inp);
  return (0);
 }
 SCTP_INP_RUNLOCK(inp);
 if ((how == PRU_FLUSH_RD) || (how == PRU_FLUSH_RDWR)) {




  SCTP_INP_WLOCK(inp);
  SCTP_INP_READ_LOCK(inp);
  inp->sctp_flags |= SCTP_PCB_FLAGS_SOCKET_CANT_READ;
  SCTP_INP_READ_UNLOCK(inp);
  SCTP_INP_WUNLOCK(inp);
  so->so_rcv.sb_cc = 0;
  so->so_rcv.sb_mbcnt = 0;
  so->so_rcv.sb_mb = ((void*)0);
 }
 if ((how == PRU_FLUSH_WR) || (how == PRU_FLUSH_RDWR)) {




  so->so_snd.sb_cc = 0;
  so->so_snd.sb_mbcnt = 0;
  so->so_snd.sb_mb = ((void*)0);

 }
 return (0);
}
