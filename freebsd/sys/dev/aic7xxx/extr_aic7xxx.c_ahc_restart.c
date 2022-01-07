
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int tqinfifonext; int features; int seqctl; } ;


 int AHC_CMD_CHAN ;
 int BITBUCKET ;
 int CCSCBCNT ;
 int CCSCBCTL ;
 int CCSGCTL ;
 int CLRINT ;
 int CLRSEQINT ;
 int ENAUTOATNP ;
 int ENRSELI ;
 int ENSELI ;
 int LASTPHASE ;
 int MSG_NOOP ;
 int MSG_OUT ;
 int MWI_RESIDUAL ;
 int P_BUSFREE ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SCB_DMA ;
 int SCSISEQ ;
 int SCSISEQ_TEMPLATE ;
 int SCSISIGO ;
 int SEQADDR0 ;
 int SEQADDR1 ;
 int SEQCTL ;
 int SEQ_FLAGS2 ;
 int SXFRCTL1 ;
 int TQINPOS ;
 int ahc_add_curscb_to_free_list (struct ahc_softc*) ;
 int ahc_clear_msg_state (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_pause (struct ahc_softc*) ;
 int ahc_unpause (struct ahc_softc*) ;

void
ahc_restart(struct ahc_softc *ahc)
{

 ahc_pause(ahc);


 ahc_clear_msg_state(ahc);

 ahc_outb(ahc, SCSISIGO, 0);
 ahc_outb(ahc, MSG_OUT, MSG_NOOP);
 ahc_outb(ahc, SXFRCTL1, ahc_inb(ahc, SXFRCTL1) & ~BITBUCKET);
 ahc_outb(ahc, LASTPHASE, P_BUSFREE);
 ahc_outb(ahc, SAVED_SCSIID, 0xFF);
 ahc_outb(ahc, SAVED_LUN, 0xFF);
 ahc_outb(ahc, TQINPOS, ahc->tqinfifonext);


 ahc_outb(ahc, SCSISEQ,
   ahc_inb(ahc, SCSISEQ_TEMPLATE) & (ENSELI|ENRSELI|ENAUTOATNP));
 if ((ahc->features & AHC_CMD_CHAN) != 0) {

  ahc_outb(ahc, CCSCBCNT, 0);
  ahc_outb(ahc, CCSGCTL, 0);
  ahc_outb(ahc, CCSCBCTL, 0);
 }





 if ((ahc_inb(ahc, SEQ_FLAGS2) & SCB_DMA) != 0) {
  ahc_add_curscb_to_free_list(ahc);
  ahc_outb(ahc, SEQ_FLAGS2,
    ahc_inb(ahc, SEQ_FLAGS2) & ~SCB_DMA);
 }






 ahc_outb(ahc, CLRINT, CLRSEQINT);

 ahc_outb(ahc, MWI_RESIDUAL, 0);
 ahc_outb(ahc, SEQCTL, ahc->seqctl);
 ahc_outb(ahc, SEQADDR0, 0);
 ahc_outb(ahc, SEQADDR1, 0);

 ahc_unpause(ahc);
}
