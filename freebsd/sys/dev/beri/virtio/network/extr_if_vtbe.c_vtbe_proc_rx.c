
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtbe_softc {scalar_t__ hdrsize; int beri_mem_offset; struct ifnet* ifp; } ;
struct vqueue_info {int dummy; } ;
struct uio {int uio_resid; int uio_iovcnt; int uio_rw; int uio_segflg; struct iovec* uio_iov; } ;
struct TYPE_2__ {struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct iovec {scalar_t__ iov_len; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int DESC_COUNT ;
 int ETHER_ALIGN ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VTBE_LOCK (struct vtbe_softc*) ;
 int VTBE_UNLOCK (struct vtbe_softc*) ;
 int free (struct iovec*,int ) ;
 struct iovec* getcopy (struct iovec*,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 struct mbuf* m_uiotombuf (struct uio*,int ,int ,int ,int ) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 int vq_getchain (int ,struct vqueue_info*,struct iovec*,int,int *) ;
 int vq_relchain (struct vqueue_info*,struct iovec*,int,scalar_t__) ;

__attribute__((used)) static void
vtbe_proc_rx(struct vtbe_softc *sc, struct vqueue_info *vq)
{
 struct iovec iov[DESC_COUNT];
 struct iovec *tiov;
 struct ifnet *ifp;
 struct uio uio;
 struct mbuf *m;
 int iolen;
 int i;
 int n;

 ifp = sc->ifp;

 n = vq_getchain(sc->beri_mem_offset, vq, iov,
  DESC_COUNT, ((void*)0));

 KASSERT(n >= 1 && n <= DESC_COUNT,
  ("wrong n %d", n));

 tiov = getcopy(iov, n);

 iolen = 0;
 for (i = 1; i < n; i++) {
  iolen += iov[i].iov_len;
 }

 uio.uio_resid = iolen;
 uio.uio_iov = &tiov[1];
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_iovcnt = (n - 1);
 uio.uio_rw = UIO_WRITE;

 if ((m = m_uiotombuf(&uio, M_NOWAIT, 0, ETHER_ALIGN,
     M_PKTHDR)) == ((void*)0)) {
  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
  goto done;
 }

 m->m_pkthdr.rcvif = ifp;

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);

 CURVNET_SET(ifp->if_vnet);
 VTBE_UNLOCK(sc);
 (*ifp->if_input)(ifp, m);
 VTBE_LOCK(sc);
 CURVNET_RESTORE();

done:
 free(tiov, M_DEVBUF);
 vq_relchain(vq, iov, n, iolen + sc->hdrsize);
}
