
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct mmc_softc {int retune_paused; } ;


 int CMD_RETRIES ;
 int MMC_CMD_AC ;
 int MMC_RSP_NONE ;
 int MMC_RSP_R1B ;
 int MMC_SELECT_CARD ;
 int mmc_wait_for_command (struct mmc_softc*,int ,int,int,int *,int ) ;

__attribute__((used)) static int
mmc_select_card(struct mmc_softc *sc, uint16_t rca)
{
 int err, flags;

 flags = (rca ? MMC_RSP_R1B : MMC_RSP_NONE) | MMC_CMD_AC;
 sc->retune_paused++;
 err = mmc_wait_for_command(sc, MMC_SELECT_CARD, (uint32_t)rca << 16,
     flags, ((void*)0), CMD_RETRIES);
 sc->retune_paused--;
 return (err);
}
