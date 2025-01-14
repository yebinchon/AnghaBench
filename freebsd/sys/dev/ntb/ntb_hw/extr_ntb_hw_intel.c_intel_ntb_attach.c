
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ type; int device; int db_mask_lock; int peer_msix_work; int lr_timer; int heartbeat_timer; void* msix_mw_idx; void* b2b_mw_idx; int features; } ;
struct ntb_hw_info {scalar_t__ type; int features; } ;
typedef int device_t ;


 void* B2B_MW_DISABLED ;
 int MTX_SPIN ;
 scalar_t__ NTB_ATOM ;
 int callout_init (int *,int) ;
 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_atom_init_dev (struct ntb_softc*) ;
 int intel_ntb_detach (int ) ;
 int intel_ntb_detect_atom (struct ntb_softc*) ;
 int intel_ntb_detect_max_mw (struct ntb_softc*) ;
 int intel_ntb_detect_xeon (struct ntb_softc*) ;
 struct ntb_hw_info* intel_ntb_get_device_info (int ) ;
 int intel_ntb_map_pci_bars (struct ntb_softc*) ;
 int intel_ntb_poll_link (struct ntb_softc*) ;
 int intel_ntb_spad_clear (int ) ;
 int intel_ntb_sysctl_init (struct ntb_softc*) ;
 int intel_ntb_xeon_init_dev (struct ntb_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ntb_register_device (int ) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;

__attribute__((used)) static int
intel_ntb_attach(device_t device)
{
 struct ntb_softc *ntb;
 struct ntb_hw_info *p;
 int error;

 ntb = device_get_softc(device);
 p = intel_ntb_get_device_info(pci_get_devid(device));

 ntb->device = device;
 ntb->type = p->type;
 ntb->features = p->features;
 ntb->b2b_mw_idx = B2B_MW_DISABLED;
 ntb->msix_mw_idx = B2B_MW_DISABLED;


 callout_init(&ntb->heartbeat_timer, 1);
 callout_init(&ntb->lr_timer, 1);
 callout_init(&ntb->peer_msix_work, 1);
 mtx_init(&ntb->db_mask_lock, "ntb hw bits", ((void*)0), MTX_SPIN);

 if (ntb->type == NTB_ATOM)
  error = intel_ntb_detect_atom(ntb);
 else
  error = intel_ntb_detect_xeon(ntb);
 if (error != 0)
  goto out;

 intel_ntb_detect_max_mw(ntb);

 pci_enable_busmaster(ntb->device);

 error = intel_ntb_map_pci_bars(ntb);
 if (error != 0)
  goto out;
 if (ntb->type == NTB_ATOM)
  error = intel_ntb_atom_init_dev(ntb);
 else
  error = intel_ntb_xeon_init_dev(ntb);
 if (error != 0)
  goto out;

 intel_ntb_spad_clear(device);

 intel_ntb_poll_link(ntb);

 intel_ntb_sysctl_init(ntb);


 error = ntb_register_device(device);

out:
 if (error != 0)
  intel_ntb_detach(device);
 return (error);
}
