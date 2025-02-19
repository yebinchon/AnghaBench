
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pci_vtscsi_softc {int dummy; } ;
struct pci_vtscsi_ctrl_tmf {int dummy; } ;
struct pci_vtscsi_ctrl_an {int dummy; } ;


 scalar_t__ VIRTIO_SCSI_T_AN_QUERY ;
 scalar_t__ VIRTIO_SCSI_T_TMF ;
 int pci_vtscsi_an_handle (struct pci_vtscsi_softc*,struct pci_vtscsi_ctrl_an*) ;
 int pci_vtscsi_tmf_handle (struct pci_vtscsi_softc*,struct pci_vtscsi_ctrl_tmf*) ;

__attribute__((used)) static int
pci_vtscsi_control_handle(struct pci_vtscsi_softc *sc, void *buf,
    size_t bufsize)
{
 struct pci_vtscsi_ctrl_tmf *tmf;
 struct pci_vtscsi_ctrl_an *an;
 uint32_t type;

 type = *(uint32_t *)buf;

 if (type == VIRTIO_SCSI_T_TMF) {
  tmf = (struct pci_vtscsi_ctrl_tmf *)buf;
  return (pci_vtscsi_tmf_handle(sc, tmf));
 }

 if (type == VIRTIO_SCSI_T_AN_QUERY) {
  an = (struct pci_vtscsi_ctrl_an *)buf;
  return (pci_vtscsi_an_handle(sc, an));
 }

 return (0);
}
