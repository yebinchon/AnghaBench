
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amr_softc {int amr_state; int amr_mailboxphys; int amr_hw_lock; TYPE_1__* amr_mailbox; int amr_dev; scalar_t__ amr_busyslots; } ;
struct amr_command {int ac_status; int ac_flags; int ac_datamap; int ac_tag; int ac_mailbox; int * ac_data; } ;
struct TYPE_2__ {int mb_ident; int mb_nstatus; int mb_status; int mb_poll; int mb_ack; int mb_busy; } ;


 int AMR_CMD_DATAIN ;
 int AMR_CMD_DATAOUT ;
 int AMR_MBOX_CMDSIZE ;
 int AMR_QGET_IDB (struct amr_softc*) ;
 int AMR_QIDB_ACK ;
 int AMR_QIDB_SUBMIT ;
 int AMR_QPUT_IDB (struct amr_softc*,int) ;
 int AMR_STATE_INTEN ;
 int AMR_STATUS_SUCCESS ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int DELAY (int) ;
 int PCATCH ;
 int PRIBIO ;
 int bcopy (int *,void*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int msleep (struct amr_softc*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
amr_quartz_poll_command1(struct amr_softc *sc, struct amr_command *ac)
{
    int count, error;

    mtx_lock(&sc->amr_hw_lock);
    if ((sc->amr_state & AMR_STATE_INTEN) == 0) {
 count=0;
 while (sc->amr_busyslots) {
     msleep(sc, &sc->amr_hw_lock, PRIBIO | PCATCH, "amrpoll", hz);
     if(count++>10) {
  break;
     }
 }

 if(sc->amr_busyslots) {
     device_printf(sc->amr_dev, "adapter is busy\n");
     mtx_unlock(&sc->amr_hw_lock);
     if (ac->ac_data != ((void*)0)) {
  bus_dmamap_unload(ac->ac_tag, ac->ac_datamap);
     }
         ac->ac_status=0;
     return(1);
 }
    }

    bcopy(&ac->ac_mailbox, (void *)(uintptr_t)(volatile void *)sc->amr_mailbox, AMR_MBOX_CMDSIZE);


    sc->amr_mailbox->mb_ident = 0xFE;
    sc->amr_mailbox->mb_nstatus = 0xFF;
    sc->amr_mailbox->mb_status = 0xFF;
    sc->amr_mailbox->mb_poll = 0;
    sc->amr_mailbox->mb_ack = 0;
    sc->amr_mailbox->mb_busy = 1;

    AMR_QPUT_IDB(sc, sc->amr_mailboxphys | AMR_QIDB_SUBMIT);

    while(sc->amr_mailbox->mb_nstatus == 0xFF)
 DELAY(1);
    while(sc->amr_mailbox->mb_status == 0xFF)
 DELAY(1);
    ac->ac_status=sc->amr_mailbox->mb_status;
    error = (ac->ac_status !=AMR_STATUS_SUCCESS) ? 1:0;
    while(sc->amr_mailbox->mb_poll != 0x77)
 DELAY(1);
    sc->amr_mailbox->mb_poll = 0;
    sc->amr_mailbox->mb_ack = 0x77;


    AMR_QPUT_IDB(sc, sc->amr_mailboxphys | AMR_QIDB_ACK);
    while(AMR_QGET_IDB(sc) & AMR_QIDB_ACK)
 DELAY(1);
    mtx_unlock(&sc->amr_hw_lock);


    if (ac->ac_flags & AMR_CMD_DATAIN) {
 bus_dmamap_sync(ac->ac_tag, ac->ac_datamap, BUS_DMASYNC_POSTREAD);
    }
    if (ac->ac_flags & AMR_CMD_DATAOUT) {
 bus_dmamap_sync(ac->ac_tag, ac->ac_datamap, BUS_DMASYNC_POSTWRITE);
    }
    bus_dmamap_unload(ac->ac_tag, ac->ac_datamap);

    return(error);
}
