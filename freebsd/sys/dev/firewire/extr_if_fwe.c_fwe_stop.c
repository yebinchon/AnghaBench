
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_5__ {struct firewire_comm* fc; } ;
struct TYPE_4__ {struct ifnet* ifp; } ;
struct fwe_softc {size_t dma_ch; int xferlist; TYPE_2__ fd; TYPE_1__ eth_softc; } ;
struct fw_xferq {int flag; int bnchunk; TYPE_3__* bulkxfer; int * hand; } ;
struct fw_xfer {int dummy; } ;
struct firewire_comm {int (* irx_disable ) (struct firewire_comm*,size_t) ;struct fw_xferq** ir; } ;
struct TYPE_6__ {int mbuf; } ;


 int FWXFERQ_CHTAGMASK ;
 int FWXFERQ_EXTBUF ;
 int FWXFERQ_HANDLER ;
 int FWXFERQ_MODEMASK ;
 int FWXFERQ_OPEN ;
 int FWXFERQ_RUNNING ;
 int FWXFERQ_STREAM ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int M_FWE ;
 struct fw_xfer* STAILQ_FIRST (int *) ;
 int STAILQ_INIT (int *) ;
 struct fw_xfer* STAILQ_NEXT (struct fw_xfer*,int ) ;
 int free (TYPE_3__*,int ) ;
 int fw_xfer_free (struct fw_xfer*) ;
 int link ;
 int m_freem (int ) ;
 int stub1 (struct firewire_comm*,size_t) ;

__attribute__((used)) static void
fwe_stop(struct fwe_softc *fwe)
{
 struct firewire_comm *fc;
 struct fw_xferq *xferq;
 struct ifnet *ifp = fwe->eth_softc.ifp;
 struct fw_xfer *xfer, *next;
 int i;

 fc = fwe->fd.fc;

 if (fwe->dma_ch >= 0) {
  xferq = fc->ir[fwe->dma_ch];

  if (xferq->flag & FWXFERQ_RUNNING)
   fc->irx_disable(fc, fwe->dma_ch);
  xferq->flag &=
   ~(FWXFERQ_MODEMASK | FWXFERQ_OPEN | FWXFERQ_STREAM |
   FWXFERQ_EXTBUF | FWXFERQ_HANDLER | FWXFERQ_CHTAGMASK);
  xferq->hand = ((void*)0);

  for (i = 0; i < xferq->bnchunk; i++)
   m_freem(xferq->bulkxfer[i].mbuf);
  free(xferq->bulkxfer, M_FWE);

  for (xfer = STAILQ_FIRST(&fwe->xferlist); xfer != ((void*)0);
     xfer = next) {
   next = STAILQ_NEXT(xfer, link);
   fw_xfer_free(xfer);
  }
  STAILQ_INIT(&fwe->xferlist);

  xferq->bulkxfer = ((void*)0);
  fwe->dma_ch = -1;
 }

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}
