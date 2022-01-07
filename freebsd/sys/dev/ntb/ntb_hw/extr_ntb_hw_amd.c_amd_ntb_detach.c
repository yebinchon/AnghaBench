
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int device; int db_mask_lock; int hb_timer; } ;
typedef int device_t ;


 int amd_deinit_side_info (struct amd_ntb_softc*) ;
 int amd_ntb_deinit_isr (struct amd_ntb_softc*) ;
 int amd_ntb_unmap_pci_bars (struct amd_ntb_softc*) ;
 int callout_drain (int *) ;
 struct amd_ntb_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int ntb_unregister_device (int ) ;
 int pci_disable_busmaster (int ) ;

__attribute__((used)) static int
amd_ntb_detach(device_t device)
{
 struct amd_ntb_softc *ntb = device_get_softc(device);

 ntb_unregister_device(device);
 amd_deinit_side_info(ntb);
 callout_drain(&ntb->hb_timer);
 amd_ntb_deinit_isr(ntb);
 mtx_destroy(&ntb->db_mask_lock);
 pci_disable_busmaster(ntb->device);
 amd_ntb_unmap_pci_bars(ntb);

 return (0);
}
