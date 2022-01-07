
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct cam_sim {int dummy; } ;
struct ahci_channel {scalar_t__ resetting; scalar_t__ resetpolldiv; int reset_timer; int r_mem; } ;


 int AHCI_P_IS ;
 scalar_t__ ATA_INL (int ,int ) ;
 int ahci_ch_intr_main (struct ahci_channel*,scalar_t__) ;
 int ahci_reset_to (struct ahci_channel*) ;
 int callout_pending (int *) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;

__attribute__((used)) static void
ahcipoll(struct cam_sim *sim)
{
 struct ahci_channel *ch = (struct ahci_channel *)cam_sim_softc(sim);
 uint32_t istatus;


 istatus = ATA_INL(ch->r_mem, AHCI_P_IS);
 if (istatus != 0)
  ahci_ch_intr_main(ch, istatus);
 if (ch->resetting != 0 &&
     (--ch->resetpolldiv <= 0 || !callout_pending(&ch->reset_timer))) {
  ch->resetpolldiv = 1000;
  ahci_reset_to(ch);
 }
}
