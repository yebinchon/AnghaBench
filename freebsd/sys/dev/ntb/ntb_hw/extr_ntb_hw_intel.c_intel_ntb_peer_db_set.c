
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct ntb_softc {TYPE_2__* peer_reg; TYPE_1__* peer_msix_data; struct ntb_pci_bar_info* peer_lapic_bar; } ;
struct ntb_pci_bar_info {int pci_bus_handle; int pci_bus_tag; } ;
typedef int device_t ;
struct TYPE_4__ {int db_bell; } ;
struct TYPE_3__ {int nmd_data; int nmd_ofs; } ;


 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_SB01BASE_LOCKUP ;
 int NTB_SDOORBELL_LOCKUP ;
 unsigned int XEON_NONLINK_DB_MSIX_BITS ;
 int XEON_PDOORBELL_OFFSET ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int db_iowrite (struct ntb_softc*,int ,int) ;
 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_db_vector_mask (int ,unsigned int) ;
 int intel_ntb_mw_write (int,int ,int) ;

__attribute__((used)) static void
intel_ntb_peer_db_set(device_t dev, uint64_t bit)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 if (HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP)) {
  struct ntb_pci_bar_info *lapic;
  unsigned i;

  lapic = ntb->peer_lapic_bar;

  for (i = 0; i < XEON_NONLINK_DB_MSIX_BITS; i++) {
   if ((bit & intel_ntb_db_vector_mask(dev, i)) != 0)
    bus_space_write_4(lapic->pci_bus_tag,
        lapic->pci_bus_handle,
        ntb->peer_msix_data[i].nmd_ofs,
        ntb->peer_msix_data[i].nmd_data);
  }
  return;
 }

 if (HAS_FEATURE(ntb, NTB_SDOORBELL_LOCKUP)) {
  intel_ntb_mw_write(2, XEON_PDOORBELL_OFFSET, bit);
  return;
 }

 db_iowrite(ntb, ntb->peer_reg->db_bell, bit);
}
