
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct twe_softc {int dummy; } ;
struct twe_request {int tr_flags; int * tr_complete; int tr_status; struct twe_softc* tr_sc; } ;
struct TYPE_4__ {int request_id; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ TWE_Command ;


 int EBUSY ;
 int TWE_CMD_BUSY ;
 int TWE_CMD_SLEEPER ;
 int TWE_COMMAND_QUEUE (struct twe_softc*,int ) ;
 TYPE_2__* TWE_FIND_COMMAND (struct twe_request*) ;
 int TWE_FIND_COMMANDPHYS (struct twe_request*) ;
 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_STATUS (struct twe_softc*) ;
 int TWE_STATUS_COMMAND_QUEUE_FULL ;
 int TWE_STATUS_RESPONSE_QUEUE_EMPTY ;
 int debug (int,char*,int ,...) ;
 int debug_called (int) ;
 int dumping ;
 int twe_check_bits (struct twe_softc*,int) ;
 int twe_done (struct twe_softc*,int ) ;
 int twe_enqueue_busy (struct twe_request*) ;

int
twe_start(struct twe_request *tr)
{
    struct twe_softc *sc = tr->tr_sc;
    TWE_Command *cmd;
    int i;
    u_int32_t status_reg;

    debug_called(4);

    if (!dumping)
 TWE_IO_ASSERT_LOCKED(sc);


    tr->tr_status = TWE_CMD_BUSY;
    cmd = TWE_FIND_COMMAND(tr);







    for (i = 100000; (i > 0); i--) {


 status_reg = TWE_STATUS(sc);
 twe_check_bits(sc, status_reg);

 if (!(status_reg & TWE_STATUS_COMMAND_QUEUE_FULL)) {
     twe_enqueue_busy(tr);

     TWE_COMMAND_QUEUE(sc, TWE_FIND_COMMANDPHYS(tr));
     return(0);
 } else if (!(status_reg & TWE_STATUS_RESPONSE_QUEUE_EMPTY) && i > 1)
     twe_done(sc, 0);
    }







    return(EBUSY);
}
