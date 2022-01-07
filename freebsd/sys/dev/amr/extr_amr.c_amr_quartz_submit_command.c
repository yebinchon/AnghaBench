
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct amr_softc {int amr_mailboxphys; int amr_hw_lock; TYPE_2__* amr_mailbox64; TYPE_1__* amr_mailbox; int amr_dev; } ;
struct TYPE_6__ {scalar_t__ mb_ident; } ;
struct amr_command {int ac_sg64_lo; int ac_sg64_hi; TYPE_3__ ac_mailbox; scalar_t__ ac_slot; scalar_t__ ac_retries; struct amr_softc* ac_sc; } ;
struct TYPE_5__ {int sg64_lo; int sg64_hi; } ;
struct TYPE_4__ {int mb_busy; scalar_t__ mb_ack; scalar_t__ mb_poll; } ;


 int AMR_QGET_ODB (struct amr_softc*) ;
 int AMR_QIDB_SUBMIT ;
 int AMR_QPUT_IDB (struct amr_softc*,int) ;
 int DELAY (int) ;
 int EBUSY ;
 int bcopy (TYPE_3__*,void*,int) ;
 int device_printf (int ,char*,struct amr_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;

__attribute__((used)) static int
amr_quartz_submit_command(struct amr_command *ac)
{
    struct amr_softc *sc = ac->ac_sc;
    static struct timeval lastfail;
    static int curfail;
    int i = 0;

    mtx_lock(&sc->amr_hw_lock);
    while (sc->amr_mailbox->mb_busy && (i++ < 10)) {
        DELAY(1);

 AMR_QGET_ODB(sc);
    }
    if (sc->amr_mailbox->mb_busy) {
 mtx_unlock(&sc->amr_hw_lock);
 if (ac->ac_retries++ > 1000) {
     if (ppsratecheck(&lastfail, &curfail, 1))
  device_printf(sc->amr_dev, "Too many retries on command %p.  "
         "Controller is likely dead\n", ac);
     ac->ac_retries = 0;
 }
 return (EBUSY);
    }





    ac->ac_mailbox.mb_ident = ac->ac_slot + 1;
    bcopy(&ac->ac_mailbox, (void *)(uintptr_t)(volatile void *)sc->amr_mailbox, 14);
    sc->amr_mailbox->mb_busy = 1;
    sc->amr_mailbox->mb_poll = 0;
    sc->amr_mailbox->mb_ack = 0;
    sc->amr_mailbox64->sg64_hi = ac->ac_sg64_hi;
    sc->amr_mailbox64->sg64_lo = ac->ac_sg64_lo;

    AMR_QPUT_IDB(sc, sc->amr_mailboxphys | AMR_QIDB_SUBMIT);
    mtx_unlock(&sc->amr_hw_lock);
    return(0);
}
