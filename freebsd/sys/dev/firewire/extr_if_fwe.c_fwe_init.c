
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int ext_size; } ;
struct TYPE_13__ {int len; } ;
struct mbuf {TYPE_6__ m_ext; TYPE_5__ m_pkthdr; int m_len; } ;
struct ifnet {int if_drv_flags; int if_flags; } ;
struct TYPE_16__ {struct firewire_comm* fc; } ;
struct TYPE_10__ {int chtag; } ;
struct TYPE_11__ {TYPE_2__ stream; } ;
struct TYPE_12__ {TYPE_3__ mode; } ;
struct TYPE_9__ {struct ifnet* ifp; } ;
struct fwe_softc {size_t dma_ch; int stream_ch; int xferlist; TYPE_8__ fd; TYPE_4__ pkt_hdr; TYPE_1__ eth_softc; } ;
struct fwe_eth_softc {struct fwe_softc* fwe; } ;
struct fw_xferq {int flag; int bnchunk; int bnpacket; struct fw_xfer* bulkxfer; int stfree; int * stproc; int stdma; int stvalid; int * buf; scalar_t__ queued; int psize; int hand; void* sc; } ;
struct TYPE_15__ {int spd; } ;
struct fw_xfer {int hand; void* sc; struct firewire_comm* fc; TYPE_7__ send; struct mbuf* mbuf; } ;
struct fw_bulkxfer {int hand; void* sc; struct firewire_comm* fc; TYPE_7__ send; struct mbuf* mbuf; } ;
struct firewire_comm {int (* irx_enable ) (struct firewire_comm*,size_t) ;struct fw_xferq** ir; } ;
typedef void* caddr_t ;


 int FWEDEBUG (struct ifnet*,char*) ;
 int FWXFERQ_EXTBUF ;
 int FWXFERQ_HANDLER ;
 int FWXFERQ_RUNNING ;
 int FWXFERQ_STREAM ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_FWE ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_xfer*,int ) ;
 int TX_MAX_QUEUE ;
 size_t fw_open_isodma (struct firewire_comm*,int ) ;
 struct fw_xfer* fw_xfer_alloc (int ) ;
 int fwe_as_input ;
 int fwe_output_callback ;
 int fwe_start (struct ifnet*) ;
 int link ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int rx_queue_len ;
 int stream_ch ;
 int stub1 (struct firewire_comm*,size_t) ;
 int tx_speed ;

__attribute__((used)) static void
fwe_init(void *arg)
{
 struct fwe_softc *fwe = ((struct fwe_eth_softc *)arg)->fwe;
 struct firewire_comm *fc;
 struct ifnet *ifp = fwe->eth_softc.ifp;
 struct fw_xferq *xferq;
 struct fw_xfer *xfer;
 struct mbuf *m;
 int i;

 FWEDEBUG(ifp, "initializing\n");


 ifp->if_flags |= IFF_PROMISC;

 fc = fwe->fd.fc;
 if (fwe->dma_ch < 0) {
  fwe->dma_ch = fw_open_isodma(fc, 0);
  if (fwe->dma_ch < 0)
   return;
  xferq = fc->ir[fwe->dma_ch];
  xferq->flag |= FWXFERQ_EXTBUF |
    FWXFERQ_HANDLER | FWXFERQ_STREAM;
  fwe->stream_ch = stream_ch;
  fwe->pkt_hdr.mode.stream.chtag = fwe->stream_ch;
  xferq->flag &= ~0xff;
  xferq->flag |= fwe->stream_ch & 0xff;

  xferq->sc = (caddr_t) fwe;
  xferq->hand = fwe_as_input;
  xferq->bnchunk = rx_queue_len;
  xferq->bnpacket = 1;
  xferq->psize = MCLBYTES;
  xferq->queued = 0;
  xferq->buf = ((void*)0);
  xferq->bulkxfer = (struct fw_bulkxfer *) malloc(
   sizeof(struct fw_bulkxfer) * xferq->bnchunk,
       M_FWE, M_WAITOK);
  STAILQ_INIT(&xferq->stvalid);
  STAILQ_INIT(&xferq->stfree);
  STAILQ_INIT(&xferq->stdma);
  xferq->stproc = ((void*)0);
  for (i = 0; i < xferq->bnchunk; i++) {
   m = m_getcl(M_WAITOK, MT_DATA, M_PKTHDR);
   xferq->bulkxfer[i].mbuf = m;
   m->m_len = m->m_pkthdr.len = m->m_ext.ext_size;
   STAILQ_INSERT_TAIL(&xferq->stfree,
     &xferq->bulkxfer[i], link);
  }
  STAILQ_INIT(&fwe->xferlist);
  for (i = 0; i < TX_MAX_QUEUE; i++) {
   xfer = fw_xfer_alloc(M_FWE);
   if (xfer == ((void*)0))
    break;
   xfer->send.spd = tx_speed;
   xfer->fc = fwe->fd.fc;
   xfer->sc = (caddr_t)fwe;
   xfer->hand = fwe_output_callback;
   STAILQ_INSERT_TAIL(&fwe->xferlist, xfer, link);
  }
 } else
  xferq = fc->ir[fwe->dma_ch];



 if ((xferq->flag & FWXFERQ_RUNNING) == 0)
  fc->irx_enable(fc, fwe->dma_ch);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;





}
