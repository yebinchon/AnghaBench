#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vtbe_softc {int hdrsize; int /*<<< orphan*/  pio_send; int /*<<< orphan*/  beri_mem_offset; struct ifnet* ifp; struct vqueue_info* vs_queues; } ;
struct vqueue_info {TYPE_1__* vq_used; int /*<<< orphan*/  vq_save_used; } ;
struct virtio_net_hdr {int dummy; } ;
struct uio {int uio_resid; int uio_iovcnt; int /*<<< orphan*/  uio_rw; scalar_t__ uio_offset; int /*<<< orphan*/  uio_segflg; struct iovec* uio_iov; } ;
struct mbuf {int dummy; } ;
struct iovec {int iov_len; struct virtio_net_hdr* iov_base; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int DESC_COUNT ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Q_INTR ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  VIRTIO_MMIO_INT_VRING ; 
 int /*<<< orphan*/  FUNC4 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtbe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iovec*,int /*<<< orphan*/ ) ; 
 struct iovec* FUNC8 (struct iovec*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*) ; 
 int FUNC12 (struct uio*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct virtio_net_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct vqueue_info*,struct iovec*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct vqueue_info*,struct iovec*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct vqueue_info*) ; 

__attribute__((used)) static void
FUNC19(struct vtbe_softc *sc)
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

	FUNC4(sc);

	/* RX queue */
	vq = &sc->vs_queues[0];
	if (!FUNC16(vq)) {
		return;
	}

	ifp = sc->ifp;
	if (ifp->if_drv_flags & IFF_DRV_OACTIVE) {
		return;
	}

	enqueued = 0;

	if (!FUNC18(vq))
		return;

	vq->vq_save_used = FUNC6(vq->vq_used->idx);

	for (;;) {
		if (!FUNC16(vq)) {
			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			break;
		}

		FUNC1(&ifp->if_snd, m);
		if (m == NULL) {
			break;
		}

		n = FUNC15(sc->beri_mem_offset, vq, iov,
			DESC_COUNT, NULL);
		FUNC2(n == 2,
			("Unexpected amount of descriptors (%d)", n));

		tiov = FUNC8(iov, n);
		vnh = iov[0].iov_base;
		FUNC13(vnh, 0, sc->hdrsize);

		len = iov[1].iov_len;
		uio.uio_resid = len;
		uio.uio_iov = &tiov[1];
		uio.uio_segflg = UIO_SYSSPACE;
		uio.uio_iovcnt = 1;
		uio.uio_offset = 0;
		uio.uio_rw = UIO_READ;

		error = FUNC12(&uio, m, 0);
		if (error)
			FUNC14("m_mbuftouio failed\n");

		iolen = (len - uio.uio_resid + sc->hdrsize);

		FUNC7(tiov, M_DEVBUF);
		FUNC17(vq, iov, n, iolen);

		FUNC10(ifp, IFCOUNTER_OPACKETS, 1);

		FUNC0(ifp, m);
		FUNC11(m);

		++enqueued;
	}

	if (enqueued != 0) {
		reg = FUNC9(VIRTIO_MMIO_INT_VRING);
		FUNC5(sc, VIRTIO_MMIO_INTERRUPT_STATUS, reg);

		FUNC3(sc->pio_send, Q_INTR, 1);
	}
}