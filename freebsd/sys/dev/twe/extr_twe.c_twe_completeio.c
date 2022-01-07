
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct twe_softc {int dummy; } ;
struct twe_request {scalar_t__ tr_status; struct bio* tr_private; struct twe_softc* tr_sc; } ;
struct bio {int bio_flags; int bio_error; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ TWE_Command ;


 int BIO_ERROR ;
 int EIO ;
 scalar_t__ TWE_CMD_COMPLETE ;
 TYPE_2__* TWE_FIND_COMMAND (struct twe_request*) ;
 int debug_called (int) ;
 int twe_panic (struct twe_softc*,char*) ;
 int twe_release_request (struct twe_request*) ;
 scalar_t__ twe_report_request (struct twe_request*) ;
 int twed_intr (struct bio*) ;

__attribute__((used)) static void
twe_completeio(struct twe_request *tr)
{
    TWE_Command *cmd = TWE_FIND_COMMAND(tr);
    struct twe_softc *sc = tr->tr_sc;
    struct bio *bp = tr->tr_private;

    debug_called(4);

    if (tr->tr_status == TWE_CMD_COMPLETE) {

 if (cmd->generic.status)
     if (twe_report_request(tr)) {
  bp->bio_error = EIO;
  bp->bio_flags |= BIO_ERROR;
     }

    } else {
 twe_panic(sc, "twe_completeio on incomplete command");
    }
    tr->tr_private = ((void*)0);
    twed_intr(bp);
    twe_release_request(tr);
}
