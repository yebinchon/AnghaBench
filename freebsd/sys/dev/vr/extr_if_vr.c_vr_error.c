
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int bus_errors; } ;
struct vr_softc {scalar_t__ vr_revid; int vr_dev; int vr_flags; TYPE_1__ vr_stat; } ;


 int CSR_WRITE_2 (struct vr_softc*,int ,int ) ;
 int EAGAIN ;
 int PCIR_STATUS ;
 scalar_t__ REV_ID_VT6105M_A0 ;
 int VR_F_RESTART ;
 int VR_IMR ;
 int VR_ISR_BUSERR ;
 int VR_ISR_LINKSTAT2 ;
 int VR_ISR_STATSOFLOW ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
vr_error(struct vr_softc *sc, uint16_t status)
{
 uint16_t pcis;

 status &= VR_ISR_BUSERR | VR_ISR_LINKSTAT2 | VR_ISR_STATSOFLOW;
 if ((status & VR_ISR_BUSERR) != 0) {
  status &= ~VR_ISR_BUSERR;
  sc->vr_stat.bus_errors++;

  CSR_WRITE_2(sc, VR_IMR, 0);
  pcis = pci_read_config(sc->vr_dev, PCIR_STATUS, 2);
  device_printf(sc->vr_dev, "PCI bus error(0x%04x) -- "
      "resetting\n", pcis);
  pci_write_config(sc->vr_dev, PCIR_STATUS, pcis, 2);
  sc->vr_flags |= VR_F_RESTART;
  return (EAGAIN);
 }
 if ((status & VR_ISR_LINKSTAT2) != 0) {

  status &= ~VR_ISR_LINKSTAT2;
 }
 if ((status & VR_ISR_STATSOFLOW) != 0) {
  status &= ~VR_ISR_STATSOFLOW;
  if (sc->vr_revid >= REV_ID_VT6105M_A0) {

  }
 }

 if (status != 0)
  device_printf(sc->vr_dev,
      "unhandled interrupt, status = 0x%04x\n", status);
 return (0);
}
