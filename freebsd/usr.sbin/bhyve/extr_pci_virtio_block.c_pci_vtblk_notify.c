
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int dummy; } ;
struct pci_vtblk_softc {int dummy; } ;


 int pci_vtblk_proc (struct pci_vtblk_softc*,struct vqueue_info*) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;

__attribute__((used)) static void
pci_vtblk_notify(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtblk_softc *sc = vsc;

 while (vq_has_descs(vq))
  pci_vtblk_proc(sc, vq);
}
