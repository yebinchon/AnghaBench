#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct mly_softc {int dummy; } ;
struct TYPE_4__ {int value; int /*<<< orphan*/  scale; } ;
struct mly_command_ioctl {TYPE_1__ timeout; int /*<<< orphan*/  opcode; int /*<<< orphan*/  maximum_sense_size; int /*<<< orphan*/  sense_buffer_address; } ;
struct mly_command {size_t mc_length; size_t mc_sense; int /*<<< orphan*/ * mc_data; TYPE_3__* mc_packet; int /*<<< orphan*/  mc_status; int /*<<< orphan*/  mc_flags; } ;
struct TYPE_5__ {size_t data_size; } ;
struct TYPE_6__ {TYPE_2__ generic; struct mly_command_ioctl ioctl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MDACMD_IOCTL ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  MLY_CMD_DATAIN ; 
 int /*<<< orphan*/  MLY_CMD_DATAOUT ; 
 int /*<<< orphan*/  MLY_TIMEOUT_SECONDS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mly_softc*,struct mly_command**) ; 
 int FUNC6 (struct mly_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct mly_command*) ; 

__attribute__((used)) static int
FUNC8(struct mly_softc *sc, struct mly_command_ioctl *ioctl, void **data, size_t datasize, 
	  u_int8_t *status, void *sense_buffer, size_t *sense_length)
{
    struct mly_command		*mc;
    struct mly_command_ioctl	*mci;
    int				error;

    FUNC2(1);
    FUNC0(sc);

    mc = NULL;
    if (FUNC5(sc, &mc)) {
	error = ENOMEM;
	goto out;
    }

    /* copy the ioctl structure, but save some important fields and then fixup */
    mci = &mc->mc_packet->ioctl;
    ioctl->sense_buffer_address = mci->sense_buffer_address;
    ioctl->maximum_sense_size = mci->maximum_sense_size;
    *mci = *ioctl;
    mci->opcode = MDACMD_IOCTL;
    mci->timeout.value = 30;
    mci->timeout.scale = MLY_TIMEOUT_SECONDS;
    
    /* handle the data buffer */
    if (data != NULL) {
	if (*data == NULL) {
	    /* allocate data buffer */
	    if ((mc->mc_data = FUNC4(datasize, M_DEVBUF, M_NOWAIT)) == NULL) {
		error = ENOMEM;
		goto out;
	    }
	    mc->mc_flags |= MLY_CMD_DATAIN;
	} else {
	    mc->mc_data = *data;
	    mc->mc_flags |= MLY_CMD_DATAOUT;
	}
	mc->mc_length = datasize;
	mc->mc_packet->generic.data_size = datasize;
    }
    
    /* run the command */
    if ((error = FUNC6(mc)))
	goto out;
    
    /* clean up and return any data */
    *status = mc->mc_status;
    if ((mc->mc_sense > 0) && (sense_buffer != NULL)) {
	FUNC1(mc->mc_packet, sense_buffer, mc->mc_sense);
	*sense_length = mc->mc_sense;
	goto out;
    }

    /* should we return a data pointer? */
    if ((data != NULL) && (*data == NULL))
	*data = mc->mc_data;

    /* command completed OK */
    error = 0;

out:
    if (mc != NULL) {
	/* do we need to free a data buffer we allocated? */
	if (error && (mc->mc_data != NULL) && (*data == NULL))
	    FUNC3(mc->mc_data, M_DEVBUF);
	FUNC7(mc);
    }
    return(error);
}