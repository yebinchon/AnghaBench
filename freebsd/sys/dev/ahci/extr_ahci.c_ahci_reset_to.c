
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_channel {int resetting; int reset_timer; int sim; } ;


 int TRUE ;
 int ahci_clo (struct ahci_channel*) ;
 int ahci_start (struct ahci_channel*,int) ;
 scalar_t__ ahci_wait_ready (struct ahci_channel*,int,int) ;
 int callout_schedule (int *,int) ;
 int hz ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
ahci_reset_to(void *arg)
{
 struct ahci_channel *ch = arg;

 if (ch->resetting == 0)
  return;
 ch->resetting--;
 if (ahci_wait_ready(ch, ch->resetting == 0 ? -1 : 0,
     (310 - ch->resetting) * 100) == 0) {
  ch->resetting = 0;
  ahci_start(ch, 1);
  xpt_release_simq(ch->sim, TRUE);
  return;
 }
 if (ch->resetting == 0) {
  ahci_clo(ch);
  ahci_start(ch, 1);
  xpt_release_simq(ch->sim, TRUE);
  return;
 }
 callout_schedule(&ch->reset_timer, hz / 10);
}
