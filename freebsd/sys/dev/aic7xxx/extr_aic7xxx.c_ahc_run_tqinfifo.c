
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct target_cmd {scalar_t__ cmd_valid; } ;
struct ahc_softc {int features; size_t tqinfifonext; int shared_data_dmamap; int shared_data_dmat; struct target_cmd* targetcmds; } ;


 int AHC_AUTOPAUSE ;
 int AHC_HS_MAILBOX ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int HOST_TQINPOS ;
 int HS_MAILBOX ;
 int KERNEL_TQINPOS ;
 int TRUE ;
 scalar_t__ ahc_handle_target_cmd (struct ahc_softc*,struct target_cmd*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_pause (struct ahc_softc*) ;
 int ahc_sync_tqinfifo (struct ahc_softc*,int ) ;
 int ahc_targetcmd_offset (struct ahc_softc*,size_t) ;
 int ahc_unpause (struct ahc_softc*) ;
 int aic_dmamap_sync (struct ahc_softc*,int ,int ,int ,int,int ) ;

void
ahc_run_tqinfifo(struct ahc_softc *ahc, int paused)
{
 struct target_cmd *cmd;






 if ((ahc->features & AHC_AUTOPAUSE) != 0)
  paused = TRUE;

 ahc_sync_tqinfifo(ahc, BUS_DMASYNC_POSTREAD);
 while ((cmd = &ahc->targetcmds[ahc->tqinfifonext])->cmd_valid != 0) {





  if (ahc_handle_target_cmd(ahc, cmd) != 0)
   break;

  cmd->cmd_valid = 0;
  aic_dmamap_sync(ahc, ahc->shared_data_dmat,
    ahc->shared_data_dmamap,
    ahc_targetcmd_offset(ahc, ahc->tqinfifonext),
    sizeof(struct target_cmd),
    BUS_DMASYNC_PREREAD);
  ahc->tqinfifonext++;





  if ((ahc->tqinfifonext & (HOST_TQINPOS - 1)) == 1) {
   if ((ahc->features & AHC_HS_MAILBOX) != 0) {
    u_int hs_mailbox;

    hs_mailbox = ahc_inb(ahc, HS_MAILBOX);
    hs_mailbox &= ~HOST_TQINPOS;
    hs_mailbox |= ahc->tqinfifonext & HOST_TQINPOS;
    ahc_outb(ahc, HS_MAILBOX, hs_mailbox);
   } else {
    if (!paused)
     ahc_pause(ahc);
    ahc_outb(ahc, KERNEL_TQINPOS,
      ahc->tqinfifonext & HOST_TQINPOS);
    if (!paused)
     ahc_unpause(ahc);
   }
  }
 }
}
