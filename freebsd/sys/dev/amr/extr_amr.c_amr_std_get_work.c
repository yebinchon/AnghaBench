
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct amr_softc {scalar_t__ amr_mailbox; } ;
struct amr_mailbox {int dummy; } ;


 int AMR_SACK_INTERRUPT (struct amr_softc*) ;
 int AMR_SGET_ISTAT (struct amr_softc*) ;
 int AMR_SINTR_VALID ;
 int AMR_SPUT_ISTAT (struct amr_softc*,int) ;
 int bcopy (void*,struct amr_mailbox*,int) ;
 int debug_called (int) ;

__attribute__((used)) static int
amr_std_get_work(struct amr_softc *sc, struct amr_mailbox *mbsave)
{
    int worked;
    u_int8_t istat;

    debug_called(3);

    worked = 0;


    istat = AMR_SGET_ISTAT(sc);
    if ((istat & AMR_SINTR_VALID) != 0) {
 AMR_SPUT_ISTAT(sc, istat);


 bcopy((void *)(uintptr_t)(volatile void *)sc->amr_mailbox, mbsave, sizeof(*mbsave));

 AMR_SACK_INTERRUPT(sc);
 worked = 1;
    }

    return(worked);
}
