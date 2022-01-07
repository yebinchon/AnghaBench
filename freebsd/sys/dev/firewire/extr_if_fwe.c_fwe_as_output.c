
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int len; } ;
struct mbuf {TYPE_4__ m_pkthdr; } ;
struct TYPE_15__ {int * ifq_head; } ;
struct ifnet {TYPE_8__ if_snd; } ;
struct TYPE_13__ {TYPE_6__* fc; } ;
struct fwe_softc {TYPE_5__ fd; int pkt_hdr; int xferlist; } ;
struct fw_xferq {int queued; int maxq; int (* start ) (TYPE_6__*) ;} ;
struct TYPE_9__ {int len; } ;
struct TYPE_10__ {TYPE_1__ stream; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_11__ {int pay_len; struct fw_pkt hdr; } ;
struct fw_xfer {TYPE_3__ send; struct mbuf* mbuf; } ;
typedef int int32_t ;
struct TYPE_14__ {struct fw_xferq* atq; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int ETHER_ALIGN ;
 int FWE_LOCK (struct fwe_softc*) ;
 int FWE_UNLOCK (struct fwe_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IF_DEQUEUE (TYPE_8__*,struct mbuf*) ;
 int M_NOWAIT ;
 int M_PREPEND (struct mbuf*,int ,int ) ;
 struct fw_xfer* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_HEAD (int *,struct fw_xfer*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 scalar_t__ fw_asyreq (TYPE_6__*,int,struct fw_xfer*) ;
 int fwe_output_callback (struct fw_xfer*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int link ;
 int printf (char*,...) ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static void
fwe_as_output(struct fwe_softc *fwe, struct ifnet *ifp)
{
 struct mbuf *m;
 struct fw_xfer *xfer;
 struct fw_xferq *xferq;
 struct fw_pkt *fp;
 int i = 0;

 xfer = ((void*)0);
 xferq = fwe->fd.fc->atq;
 while ((xferq->queued < xferq->maxq - 1) &&
   (ifp->if_snd.ifq_head != ((void*)0))) {
  FWE_LOCK(fwe);
  xfer = STAILQ_FIRST(&fwe->xferlist);
  if (xfer == ((void*)0)) {



   FWE_UNLOCK(fwe);
   break;
  }
  STAILQ_REMOVE_HEAD(&fwe->xferlist, link);
  FWE_UNLOCK(fwe);

  IF_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0)) {
   FWE_LOCK(fwe);
   STAILQ_INSERT_HEAD(&fwe->xferlist, xfer, link);
   FWE_UNLOCK(fwe);
   break;
  }
  BPF_MTAP(ifp, m);


  M_PREPEND(m, ETHER_ALIGN, M_NOWAIT);
  fp = &xfer->send.hdr;
  *(uint32_t *)&xfer->send.hdr = *(int32_t *)&fwe->pkt_hdr;
  fp->mode.stream.len = m->m_pkthdr.len;
  xfer->mbuf = m;
  xfer->send.pay_len = m->m_pkthdr.len;

  if (fw_asyreq(fwe->fd.fc, -1, xfer) != 0) {

   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

   fwe_output_callback(xfer);
  } else {
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
   i++;
  }
 }




 if (i > 0)
  xferq->start(fwe->fd.fc);
}
