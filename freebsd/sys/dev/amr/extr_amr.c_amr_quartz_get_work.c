
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct amr_softc {TYPE_1__* amr_mailbox; } ;
struct amr_mailbox {int mb_nstatus; int mb_status; int* mb_completed; } ;
struct TYPE_2__ {int mb_nstatus; int* mb_completed; int mb_status; } ;


 int AMR_QGET_IDB (struct amr_softc*) ;
 int AMR_QGET_ODB (struct amr_softc*) ;
 int AMR_QIDB_ACK ;
 int AMR_QODB_READY ;
 int AMR_QPUT_IDB (struct amr_softc*,int) ;
 int AMR_QPUT_ODB (struct amr_softc*,int ) ;
 int DELAY (int) ;
 int debug_called (int) ;

__attribute__((used)) static int
amr_quartz_get_work(struct amr_softc *sc, struct amr_mailbox *mbsave)
{
    int worked, i;
    u_int32_t outd;
    u_int8_t nstatus;
    u_int8_t completed[46];

    debug_called(3);

    worked = 0;


    if ((outd = AMR_QGET_ODB(sc)) == AMR_QODB_READY) {


 AMR_QPUT_ODB(sc, AMR_QODB_READY);

 while ((nstatus = sc->amr_mailbox->mb_nstatus) == 0xff)
     DELAY(1);
 sc->amr_mailbox->mb_nstatus = 0xff;


 for (i = 0; i < nstatus; i++) {
     while ((completed[i] = sc->amr_mailbox->mb_completed[i]) == 0xff)
  DELAY(1);
     sc->amr_mailbox->mb_completed[i] = 0xff;
 }


 mbsave->mb_nstatus = nstatus;
 mbsave->mb_status = sc->amr_mailbox->mb_status;
 sc->amr_mailbox->mb_status = 0xff;

 for (i = 0; i < nstatus; i++)
     mbsave->mb_completed[i] = completed[i];


 AMR_QPUT_IDB(sc, AMR_QIDB_ACK);
 worked = 1;
    }

    return(worked);
}
