
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ sb_cc; } ;
struct socket {int so_options; scalar_t__ so_linger; int * so_pcb; TYPE_1__ so_rcv; TYPE_1__ so_snd; } ;
struct sctp_inpcb {int sctp_flags; } ;


 int SCTP_CALLED_AFTER_CMPSET_OFCLOSE ;
 int SCTP_FREE_SHOULD_USE_ABORT ;
 int SCTP_FREE_SHOULD_USE_GRACEFUL_CLOSE ;
 int SCTP_PCB_FLAGS_CLOSE_IP ;
 int SCTP_PCB_FLAGS_SOCKET_GONE ;
 int SCTP_SB_CLEAR (TYPE_1__) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SO_LINGER ;
 scalar_t__ atomic_cmpset_int (int*,int,int) ;
 int sctp_inpcb_free (struct sctp_inpcb*,int ,int ) ;
 int sctp_log_closing (struct sctp_inpcb*,int *,int) ;

void
sctp_close(struct socket *so)
{
 struct sctp_inpcb *inp;
 uint32_t flags;

 inp = (struct sctp_inpcb *)so->so_pcb;
 if (inp == ((void*)0))
  return;




sctp_must_try_again:
 flags = inp->sctp_flags;



 if (((flags & SCTP_PCB_FLAGS_SOCKET_GONE) == 0) &&
     (atomic_cmpset_int(&inp->sctp_flags, flags, (flags | SCTP_PCB_FLAGS_SOCKET_GONE | SCTP_PCB_FLAGS_CLOSE_IP)))) {
  if (((so->so_options & SO_LINGER) && (so->so_linger == 0)) ||
      (so->so_rcv.sb_cc > 0)) {



   sctp_inpcb_free(inp, SCTP_FREE_SHOULD_USE_ABORT,
       SCTP_CALLED_AFTER_CMPSET_OFCLOSE);
  } else {



   sctp_inpcb_free(inp, SCTP_FREE_SHOULD_USE_GRACEFUL_CLOSE,
       SCTP_CALLED_AFTER_CMPSET_OFCLOSE);
  }




  SOCK_LOCK(so);
  SCTP_SB_CLEAR(so->so_snd);




  SCTP_SB_CLEAR(so->so_rcv);


  so->so_pcb = ((void*)0);
  SOCK_UNLOCK(so);
 } else {
  flags = inp->sctp_flags;
  if ((flags & SCTP_PCB_FLAGS_SOCKET_GONE) == 0) {
   goto sctp_must_try_again;
  }
 }
 return;
}
