#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct iop_softc {int obase; int phys_obase; int /*<<< orphan*/  mtx; TYPE_1__* reg; } ;
struct i2o_util_event_reply_message {int event_mask; int* event_data; } ;
struct i2o_single_reply {scalar_t__ function; int message_flags; scalar_t__ initiator_context; } ;
struct i2o_fault_reply {int /*<<< orphan*/  preserved_mfa; } ;
struct TYPE_2__ {int oqueue; } ;

/* Variables and functions */
 int I2O_MESSAGE_FLAGS_FAIL ; 
 scalar_t__ I2O_UTIL_EVENT_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (struct iop_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 void FUNC4 (struct iop_softc*,int,struct i2o_single_reply*) ; 

void
FUNC5(void *data)
{
    struct iop_softc *sc = (struct iop_softc *)data;
    struct i2o_single_reply *reply;
    u_int32_t mfa;

    /* we might get more than one finished request pr interrupt */
    FUNC1(&sc->mtx);
    while (1) {
	if ((mfa = sc->reg->oqueue) == 0xffffffff)
	    if ((mfa = sc->reg->oqueue) == 0xffffffff)
		break;

	reply = (struct i2o_single_reply *)(sc->obase + (mfa - sc->phys_obase));

	/* if this is an event register reply, shout! */
	if (reply->function == I2O_UTIL_EVENT_REGISTER) {
	    struct i2o_util_event_reply_message *event =
		(struct i2o_util_event_reply_message *)reply;

	    FUNC3("pstiop: EVENT!! idx=%08x data=%08x\n",
		   event->event_mask, event->event_data[0]);
	    break;
	}

	/* if reply is a failurenotice we need to free the original mfa */
	if (reply->message_flags & I2O_MESSAGE_FLAGS_FAIL)
	    FUNC0(sc,((struct i2o_fault_reply *)(reply))->preserved_mfa);

	/* reply->initiator_context points to the service routine */
	((void (*)(struct iop_softc *, u_int32_t, struct i2o_single_reply *))
	    (reply->initiator_context))(sc, mfa, reply);
    }
    FUNC2(&sc->mtx);
}