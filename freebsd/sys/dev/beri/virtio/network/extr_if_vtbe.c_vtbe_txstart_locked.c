
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtbe_softc {int hdrsize; int pio_send; int beri_mem_offset; struct ifnet* ifp; struct vqueue_info* vs_queues; } ;
struct vqueue_info {TYPE_1__* vq_used; int vq_save_used; } ;
struct virtio_net_hdr {int dummy; } ;
struct uio {int uio_resid; int uio_iovcnt; int uio_rw; scalar_t__ uio_offset; int uio_segflg; struct iovec* uio_iov; } ;
struct mbuf {int dummy; } ;
struct iovec {int iov_len; struct virtio_net_hdr* iov_base; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct TYPE_2__ {int idx; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DESC_COUNT ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int PIO_SET (int ,int ,int) ;
 int Q_INTR ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VIRTIO_MMIO_INTERRUPT_STATUS ;
 int VIRTIO_MMIO_INT_VRING ;
 int VTBE_ASSERT_LOCKED (struct vtbe_softc*) ;
 int WRITE4 (struct vtbe_softc*,int ,int) ;
 int be16toh (int ) ;
 int free (struct iovec*,int ) ;
 struct iovec* getcopy (struct iovec*,int) ;
 int htobe32 (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int m_mbuftouio (struct uio*,struct mbuf*,int ) ;
 int memset (struct virtio_net_hdr*,int ,int) ;
 int panic (char*) ;
 int vq_getchain (int ,struct vqueue_info*,struct iovec*,int,int *) ;
 int vq_has_descs (struct vqueue_info*) ;
 int vq_relchain (struct vqueue_info*,struct iovec*,int,int) ;
 int vq_ring_ready (struct vqueue_info*) ;

__attribute__((used)) static void
vtbe_txstart_locked(struct vtbe_softc *sc)
{
 struct iovec iov[DESC_COUNT];
 struct virtio_net_hdr *vnh;
 struct vqueue_info *vq;
 struct iovec *tiov;
 struct ifnet *ifp;
 struct mbuf *m;
 struct uio uio;
 int enqueued;
 int iolen;
 int error;
 int reg;
 int len;
 int n;

 VTBE_ASSERT_LOCKED(sc);


 vq = &sc->vs_queues[0];
 if (!vq_has_descs(vq)) {
  return;
 }

 ifp = sc->ifp;
 if (ifp->if_drv_flags & IFF_DRV_OACTIVE) {
  return;
 }

 enqueued = 0;

 if (!vq_ring_ready(vq))
  return;

 vq->vq_save_used = be16toh(vq->vq_used->idx);

 for (;;) {
  if (!vq_has_descs(vq)) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0)) {
   break;
  }

  n = vq_getchain(sc->beri_mem_offset, vq, iov,
   DESC_COUNT, ((void*)0));
  KASSERT(n == 2,
   ("Unexpected amount of descriptors (%d)", n));

  tiov = getcopy(iov, n);
  vnh = iov[0].iov_base;
  memset(vnh, 0, sc->hdrsize);

  len = iov[1].iov_len;
  uio.uio_resid = len;
  uio.uio_iov = &tiov[1];
  uio.uio_segflg = UIO_SYSSPACE;
  uio.uio_iovcnt = 1;
  uio.uio_offset = 0;
  uio.uio_rw = UIO_READ;

  error = m_mbuftouio(&uio, m, 0);
  if (error)
   panic("m_mbuftouio failed\n");

  iolen = (len - uio.uio_resid + sc->hdrsize);

  free(tiov, M_DEVBUF);
  vq_relchain(vq, iov, n, iolen);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);

  BPF_MTAP(ifp, m);
  m_freem(m);

  ++enqueued;
 }

 if (enqueued != 0) {
  reg = htobe32(VIRTIO_MMIO_INT_VRING);
  WRITE4(sc, VIRTIO_MMIO_INTERRUPT_STATUS, reg);

  PIO_SET(sc->pio_send, Q_INTR, 1);
 }
}
