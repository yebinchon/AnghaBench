
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vqueue_info {int dummy; } ;
struct pci_vtnet_softc {int vsc_be; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int VTNET_MAXSEGS ;
 int assert (int) ;
 scalar_t__ netbe_send (int ,struct iovec*,int) ;
 int vq_getchain (struct vqueue_info*,int *,struct iovec*,int,int *) ;
 int vq_relchain (struct vqueue_info*,int ,scalar_t__) ;

__attribute__((used)) static void
pci_vtnet_proctx(struct pci_vtnet_softc *sc, struct vqueue_info *vq)
{
 struct iovec iov[VTNET_MAXSEGS + 1];
 uint16_t idx;
 ssize_t len;
 int n;





 n = vq_getchain(vq, &idx, iov, VTNET_MAXSEGS, ((void*)0));
 assert(n >= 1 && n <= VTNET_MAXSEGS);

 len = netbe_send(sc->vsc_be, iov, n);


 vq_relchain(vq, idx, len > 0 ? len : 0);
}
