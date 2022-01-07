
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vqueue_info {int dummy; } ;
struct pci_vtscsi_softc {int dummy; } ;
struct iovec {int dummy; } ;


 int VTSCSI_MAXSEG ;
 int buf_to_iov (void*,int,struct iovec*,int ,size_t) ;
 int free (void*) ;
 size_t iov_to_buf (struct iovec*,int ,void**) ;
 int pci_vtscsi_control_handle (struct pci_vtscsi_softc*,void*,size_t) ;
 int vq_endchains (struct vqueue_info*,int) ;
 int vq_getchain (struct vqueue_info*,int *,struct iovec*,int,int *) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;
 int vq_relchain (struct vqueue_info*,int ,int) ;

__attribute__((used)) static void
pci_vtscsi_controlq_notify(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtscsi_softc *sc;
 struct iovec iov[VTSCSI_MAXSEG];
 uint16_t idx, n;
 void *buf = ((void*)0);
 size_t bufsize;
 int iolen;

 sc = vsc;

 while (vq_has_descs(vq)) {
  n = vq_getchain(vq, &idx, iov, VTSCSI_MAXSEG, ((void*)0));
  bufsize = iov_to_buf(iov, n, &buf);
  iolen = pci_vtscsi_control_handle(sc, buf, bufsize);
  buf_to_iov(buf + bufsize - iolen, iolen, iov, n,
      bufsize - iolen);




  vq_relchain(vq, idx, iolen);
 }
 vq_endchains(vq, 1);
 free(buf);
}
