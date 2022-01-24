#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twe_softc {int twe_state; } ;
struct twe_request {int tr_length; int tr_flags; struct bio* tr_private; int /*<<< orphan*/  tr_status; int /*<<< orphan*/  tr_data; int /*<<< orphan*/  tr_complete; } ;
struct bio {int bio_bcount; scalar_t__ bio_cmd; int bio_error; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_pblkno; scalar_t__ bio_driver1; int /*<<< orphan*/  bio_data; } ;
struct TYPE_4__ {int size; int unit; int block_count; int /*<<< orphan*/  lba; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {TYPE_1__ io; } ;
typedef  TYPE_2__ TWE_Command ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 scalar_t__ BIO_READ ; 
 int EBUSY ; 
 int TWE_BLOCK_SIZE ; 
 int TWE_CMD_DATAIN ; 
 int TWE_CMD_DATAOUT ; 
 int /*<<< orphan*/  TWE_CMD_ERROR ; 
 int TWE_CMD_SLEEPER ; 
 TYPE_2__* FUNC0 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_OP_READ ; 
 int /*<<< orphan*/  TWE_OP_WRITE ; 
 int TWE_STATE_CTLR_BUSY ; 
 int TWE_STATE_FRZN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  twe_completeio ; 
 struct bio* FUNC3 (struct twe_softc*) ; 
 struct twe_request* FUNC4 (struct twe_softc*) ; 
 scalar_t__ FUNC5 (struct twe_softc*,struct twe_request**) ; 
 int FUNC6 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct twe_request*) ; 

void
FUNC10(struct twe_softc *sc)
{
    struct twe_request	*tr;
    TWE_Command		*cmd;
    struct bio		*bp;
    int			error;

    FUNC2(4);

    FUNC1(sc);
    if (sc->twe_state & (TWE_STATE_CTLR_BUSY | TWE_STATE_FRZN))
	return;

    /* spin until something prevents us from doing any work */
    for (;;) {

	/* try to get a command that's already ready to go */
	tr = FUNC4(sc);

	/* build a command from an outstanding bio */
	if (tr == NULL) {
	    
	    /* get a command to handle the bio with */
	    if (FUNC5(sc, &tr))
		break;

	    /* see if there's work to be done */
	    if ((bp = FUNC3(sc)) == NULL) {
		FUNC7(tr);
		break;
	    }

	    /* connect the bio to the command */
	    tr->tr_complete = twe_completeio;
	    tr->tr_private = bp;
	    tr->tr_data = bp->bio_data;
	    tr->tr_length = bp->bio_bcount;
	    cmd = FUNC0(tr);
	    if (bp->bio_cmd == BIO_READ) {
		tr->tr_flags |= TWE_CMD_DATAIN;
		cmd->io.opcode = TWE_OP_READ;
	    } else {
		tr->tr_flags |= TWE_CMD_DATAOUT;
		cmd->io.opcode = TWE_OP_WRITE;
	    }
	
	    /* build a suitable I/O command (assumes 512-byte rounded transfers) */
	    cmd->io.size = 3;
	    cmd->io.unit = *(int *)(bp->bio_driver1);
	    cmd->io.block_count = (tr->tr_length + TWE_BLOCK_SIZE - 1) / TWE_BLOCK_SIZE;
	    cmd->io.lba = bp->bio_pblkno;
	}
	
	/* did we find something to do? */
	if (tr == NULL)
	    break;
	
	/* try to map and submit the command to controller */
	error = FUNC6(tr);

	if (error != 0) {
	    if (error == EBUSY)
		break;
	    tr->tr_status = TWE_CMD_ERROR;
	    if (tr->tr_private != NULL) {
		bp = (struct bio *)(tr->tr_private);
		bp->bio_error = error;
		bp->bio_flags |= BIO_ERROR;
		tr->tr_private = NULL;
		FUNC8(bp);
	        FUNC7(tr);
	    } else if (tr->tr_flags & TWE_CMD_SLEEPER)
		FUNC9(tr); /* wakeup the sleeping owner */
	}
    }
}