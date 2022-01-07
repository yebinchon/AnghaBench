
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct unpcb {int unp_refcount; scalar_t__ unp_ino; scalar_t__ unp_gencnt; int unp_flags; struct socket* unp_socket; int unp_refs; } ;
struct thread {int dummy; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; } ;
struct socket {int so_type; int * so_listen; struct unpcb* so_pcb; TYPE_2__ so_rcv; TYPE_1__ so_snd; } ;


 int ENOBUFS ;
 int KASSERT (int ,char*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct unpcb*,int ) ;
 int M_NOWAIT ;
 int M_ZERO ;



 int UNP_LINK_WLOCK () ;
 int UNP_LINK_WOWNED () ;
 int UNP_LINK_WUNLOCK () ;
 int UNP_NASCENT ;
 int UNP_PCB_LOCK_INIT (struct unpcb*) ;
 int panic (char*) ;
 int soreserve (struct socket*,int ,int ) ;
 struct unpcb* uma_zalloc (int ,int) ;
 int unp_count ;
 int unp_dhead ;
 scalar_t__ unp_gencnt ;
 scalar_t__ unp_ino ;
 int unp_link ;
 int unp_shead ;
 int unp_sphead ;
 int unp_zone ;
 int unpdg_recvspace ;
 int unpdg_sendspace ;
 int unpsp_recvspace ;
 int unpsp_sendspace ;
 int unpst_recvspace ;
 int unpst_sendspace ;

__attribute__((used)) static int
uipc_attach(struct socket *so, int proto, struct thread *td)
{
 u_long sendspace, recvspace;
 struct unpcb *unp;
 int error;
 bool locked;

 KASSERT(so->so_pcb == ((void*)0), ("uipc_attach: so_pcb != NULL"));
 if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
  switch (so->so_type) {
  case 128:
   sendspace = unpst_sendspace;
   recvspace = unpst_recvspace;
   break;

  case 130:
   sendspace = unpdg_sendspace;
   recvspace = unpdg_recvspace;
   break;

  case 129:
   sendspace = unpsp_sendspace;
   recvspace = unpsp_recvspace;
   break;

  default:
   panic("uipc_attach");
  }
  error = soreserve(so, sendspace, recvspace);
  if (error)
   return (error);
 }
 unp = uma_zalloc(unp_zone, M_NOWAIT | M_ZERO);
 if (unp == ((void*)0))
  return (ENOBUFS);
 LIST_INIT(&unp->unp_refs);
 UNP_PCB_LOCK_INIT(unp);
 unp->unp_socket = so;
 so->so_pcb = unp;
 unp->unp_refcount = 1;
 if (so->so_listen != ((void*)0))
  unp->unp_flags |= UNP_NASCENT;

 if ((locked = UNP_LINK_WOWNED()) == 0)
  UNP_LINK_WLOCK();

 unp->unp_gencnt = ++unp_gencnt;
 unp->unp_ino = ++unp_ino;
 unp_count++;
 switch (so->so_type) {
 case 128:
  LIST_INSERT_HEAD(&unp_shead, unp, unp_link);
  break;

 case 130:
  LIST_INSERT_HEAD(&unp_dhead, unp, unp_link);
  break;

 case 129:
  LIST_INSERT_HEAD(&unp_sphead, unp, unp_link);
  break;

 default:
  panic("uipc_attach");
 }

 if (locked == 0)
  UNP_LINK_WUNLOCK();

 return (0);
}
