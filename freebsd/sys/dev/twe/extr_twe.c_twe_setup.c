
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct twe_softc {int twe_wait_aen; struct twe_request** twe_lookup; int twe_host_id; } ;
struct twe_request {int dummy; } ;
struct TYPE_4__ {int request_id; int host_id; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ TWE_Command ;


 int ENOMEM ;
 int ENXIO ;
 TYPE_2__* TWE_FIND_COMMAND (struct twe_request*) ;
 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_MAX_RESET_TRIES ;
 int TWE_Q_LENGTH ;
 int TWE_STATUS (struct twe_softc*) ;
 int TWE_STATUS_MICROCONTROLLER_READY ;
 int debug_called (int) ;
 struct twe_request* twe_allocate_request (struct twe_softc*,int) ;
 int twe_check_bits (struct twe_softc*,int ) ;
 int twe_disable_interrupts (struct twe_softc*) ;
 int twe_initq_bio (struct twe_softc*) ;
 int twe_initq_busy (struct twe_softc*) ;
 int twe_initq_complete (struct twe_softc*) ;
 int twe_initq_free (struct twe_softc*) ;
 int twe_initq_ready (struct twe_softc*) ;
 int twe_printf (struct twe_softc*,char*,...) ;
 int twe_release_request (struct twe_request*) ;
 int twe_soft_reset (struct twe_softc*) ;
 scalar_t__ twe_wait_status (struct twe_softc*,int ,int) ;

int
twe_setup(struct twe_softc *sc)
{
    struct twe_request *tr;
    TWE_Command *cmd;
    u_int32_t status_reg;
    int i;

    debug_called(4);




    twe_initq_free(sc);
    twe_initq_bio(sc);
    twe_initq_ready(sc);
    twe_initq_busy(sc);
    twe_initq_complete(sc);
    sc->twe_wait_aen = -1;




    for (i = 0; i < TWE_Q_LENGTH; i++) {
 if ((tr = twe_allocate_request(sc, i)) == ((void*)0))
     return(ENOMEM);



 cmd = TWE_FIND_COMMAND(tr);
 cmd->generic.host_id = sc->twe_host_id;
 cmd->generic.request_id = i;
 sc->twe_lookup[i] = tr;




 TWE_IO_LOCK(sc);
 twe_release_request(tr);
 TWE_IO_UNLOCK(sc);
    }
    TWE_IO_LOCK(sc);




    status_reg = TWE_STATUS(sc);
    twe_check_bits(sc, status_reg);




    if (twe_wait_status(sc, TWE_STATUS_MICROCONTROLLER_READY, 60)) {
 TWE_IO_UNLOCK(sc);
 twe_printf(sc, "microcontroller not ready\n");
 return(ENXIO);
    }




    twe_disable_interrupts(sc);





    for (i = 0; i < TWE_MAX_RESET_TRIES; i++) {

 if (i > 0)
     twe_printf(sc, "reset %d failed, trying again\n", i);

 if (!twe_soft_reset(sc))
     break;
    }
    TWE_IO_UNLOCK(sc);

    if (i >= TWE_MAX_RESET_TRIES) {
 twe_printf(sc, "can't initialise controller, giving up\n");
 return(ENXIO);
    }

    return(0);
}
