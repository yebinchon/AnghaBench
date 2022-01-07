
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct ntb_softc {scalar_t__ type; scalar_t__ ntb_ctl; scalar_t__ lnk_sta; int peer_msix_good; int peer_msix_done; int peer_msix_work; TYPE_2__* reg; int device; int db_link_mask; TYPE_1__* self_reg; } ;
struct TYPE_4__ {int lnk_sta; int ntb_ctl; } ;
struct TYPE_3__ {int db_bell; } ;


 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 scalar_t__ NTB_ATOM ;
 int NTB_SB01BASE_LOCKUP ;
 scalar_t__ _xeon_link_is_up (struct ntb_softc*) ;
 int callout_reset (int *,int ,int ,struct ntb_softc*) ;
 int db_iowrite_raw (struct ntb_softc*,int ,int ) ;
 int intel_ntb_exchange_msix ;
 void* intel_ntb_reg_read (int,int ) ;
 scalar_t__ pci_read_config (int ,int ,int) ;

__attribute__((used)) static bool
intel_ntb_poll_link(struct ntb_softc *ntb)
{
 uint32_t ntb_cntl;
 uint16_t reg_val;

 if (ntb->type == NTB_ATOM) {
  ntb_cntl = intel_ntb_reg_read(4, ntb->reg->ntb_ctl);
  if (ntb_cntl == ntb->ntb_ctl)
   return (0);

  ntb->ntb_ctl = ntb_cntl;
  ntb->lnk_sta = intel_ntb_reg_read(4, ntb->reg->lnk_sta);
 } else {
  db_iowrite_raw(ntb, ntb->self_reg->db_bell, ntb->db_link_mask);

  reg_val = pci_read_config(ntb->device, ntb->reg->lnk_sta, 2);
  if (reg_val == ntb->lnk_sta)
   return (0);

  ntb->lnk_sta = reg_val;

  if (HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP)) {
   if (_xeon_link_is_up(ntb)) {
    if (!ntb->peer_msix_good) {
     callout_reset(&ntb->peer_msix_work, 0,
         intel_ntb_exchange_msix, ntb);
     return (0);
    }
   } else {
    ntb->peer_msix_good = 0;
    ntb->peer_msix_done = 0;
   }
  }
 }
 return (1);
}
