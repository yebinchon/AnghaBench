
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct lio_instr_queue {int br; } ;
struct TYPE_4__ {int link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; } ;
struct ifnet {int dummy; } ;


 int ENETDOWN ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_RUNNING ;
 int drbr_advance (struct ifnet*,int ) ;
 struct mbuf* drbr_peek (struct ifnet*,int ) ;
 int drbr_putback (struct ifnet*,int ,struct mbuf*) ;
 int if_getdrvflags (struct ifnet*) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_xmit (struct lio*,struct lio_instr_queue*,struct mbuf**) ;

int
lio_mq_start_locked(struct ifnet *ifp, struct lio_instr_queue *iq)
{
 struct lio *lio = if_getsoftc(ifp);
 struct mbuf *next;
 int err = 0;

 if (((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0) ||
     (!lio->linfo.link.s.link_up))
  return (-ENETDOWN);


 while ((next = drbr_peek(ifp, iq->br)) != ((void*)0)) {
  err = lio_xmit(lio, iq, &next);
  if (err) {
   if (next == ((void*)0))
    drbr_advance(ifp, iq->br);
   else
    drbr_putback(ifp, iq->br, next);
   break;
  }
  drbr_advance(ifp, iq->br);

  ETHER_BPF_MTAP(ifp, next);
  if (((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0) ||
      (!lio->linfo.link.s.link_up))
   break;
 }

 return (err);
}
