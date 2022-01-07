
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct twe_softc {int twe_state; } ;
struct twe_request {int tr_length; int tr_flags; struct bio* tr_private; int tr_status; int tr_data; int tr_complete; } ;
struct bio {int bio_bcount; scalar_t__ bio_cmd; int bio_error; int bio_flags; int bio_pblkno; scalar_t__ bio_driver1; int bio_data; } ;
struct TYPE_4__ {int size; int unit; int block_count; int lba; int opcode; } ;
struct TYPE_5__ {TYPE_1__ io; } ;
typedef TYPE_2__ TWE_Command ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 int EBUSY ;
 int TWE_BLOCK_SIZE ;
 int TWE_CMD_DATAIN ;
 int TWE_CMD_DATAOUT ;
 int TWE_CMD_ERROR ;
 int TWE_CMD_SLEEPER ;
 TYPE_2__* TWE_FIND_COMMAND (struct twe_request*) ;
 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_OP_READ ;
 int TWE_OP_WRITE ;
 int TWE_STATE_CTLR_BUSY ;
 int TWE_STATE_FRZN ;
 int debug_called (int) ;
 int twe_completeio ;
 struct bio* twe_dequeue_bio (struct twe_softc*) ;
 struct twe_request* twe_dequeue_ready (struct twe_softc*) ;
 scalar_t__ twe_get_request (struct twe_softc*,struct twe_request**) ;
 int twe_map_request (struct twe_request*) ;
 int twe_release_request (struct twe_request*) ;
 int twed_intr (struct bio*) ;
 int wakeup_one (struct twe_request*) ;

void
twe_startio(struct twe_softc *sc)
{
    struct twe_request *tr;
    TWE_Command *cmd;
    struct bio *bp;
    int error;

    debug_called(4);

    TWE_IO_ASSERT_LOCKED(sc);
    if (sc->twe_state & (TWE_STATE_CTLR_BUSY | TWE_STATE_FRZN))
 return;


    for (;;) {


 tr = twe_dequeue_ready(sc);


 if (tr == ((void*)0)) {


     if (twe_get_request(sc, &tr))
  break;


     if ((bp = twe_dequeue_bio(sc)) == ((void*)0)) {
  twe_release_request(tr);
  break;
     }


     tr->tr_complete = twe_completeio;
     tr->tr_private = bp;
     tr->tr_data = bp->bio_data;
     tr->tr_length = bp->bio_bcount;
     cmd = TWE_FIND_COMMAND(tr);
     if (bp->bio_cmd == BIO_READ) {
  tr->tr_flags |= TWE_CMD_DATAIN;
  cmd->io.opcode = TWE_OP_READ;
     } else {
  tr->tr_flags |= TWE_CMD_DATAOUT;
  cmd->io.opcode = TWE_OP_WRITE;
     }


     cmd->io.size = 3;
     cmd->io.unit = *(int *)(bp->bio_driver1);
     cmd->io.block_count = (tr->tr_length + TWE_BLOCK_SIZE - 1) / TWE_BLOCK_SIZE;
     cmd->io.lba = bp->bio_pblkno;
 }


 if (tr == ((void*)0))
     break;


 error = twe_map_request(tr);

 if (error != 0) {
     if (error == EBUSY)
  break;
     tr->tr_status = TWE_CMD_ERROR;
     if (tr->tr_private != ((void*)0)) {
  bp = (struct bio *)(tr->tr_private);
  bp->bio_error = error;
  bp->bio_flags |= BIO_ERROR;
  tr->tr_private = ((void*)0);
  twed_intr(bp);
         twe_release_request(tr);
     } else if (tr->tr_flags & TWE_CMD_SLEEPER)
  wakeup_one(tr);
 }
    }
}
