#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct iop_softc {int obase; int phys_obase; int /*<<< orphan*/  mtx; TYPE_2__* reg; } ;
struct iop_request {int mfa; TYPE_1__* reply; } ;
struct i2o_single_reply {int status; } ;
struct i2o_basic_message {int transaction_context; int initiator_context; } ;
struct TYPE_4__ {int oqueue_intr_mask; int iqueue; int oqueue; } ;
struct TYPE_3__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PRIBIO ; 
 int hz ; 
 scalar_t__ iop_done ; 
 int /*<<< orphan*/  FUNC1 (struct iop_softc*,int) ; 
 scalar_t__ FUNC2 (struct iop_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(struct iop_softc *sc, int mfa, struct i2o_basic_message *msg)
{
    struct i2o_single_reply *reply;
    struct iop_request request;
    u_int32_t out_mfa;
    int status, timeout = 10000;

    FUNC3(&sc->mtx);
    if (!(sc->reg->oqueue_intr_mask & 0x08)) {
        msg->transaction_context = (u_int32_t)&request;
        msg->initiator_context = (u_int32_t)iop_done;
        sc->reg->iqueue = mfa;
        if (FUNC2(&request, &sc->mtx, PRIBIO, "pstwt", 10 * hz)) {
	    FUNC5("pstiop: timeout waiting for message response\n");
	    FUNC1(sc, mfa);
	    FUNC4(&sc->mtx);
	    return -1;
	}
        status = request.reply->status;
        sc->reg->oqueue = request.mfa;
    }
    else {
	sc->reg->iqueue = mfa;
	while (--timeout && ((out_mfa = sc->reg->oqueue) == 0xffffffff))
	    FUNC0(1000);
	if (!timeout) {
	    FUNC5("pstiop: timeout waiting for message response\n");
	    FUNC1(sc, mfa);
	    FUNC4(&sc->mtx);
	    return -1;
	}
	reply = (struct i2o_single_reply *)(sc->obase+(out_mfa-sc->phys_obase));
	status = reply->status;
	sc->reg->oqueue = out_mfa;
    }
    FUNC4(&sc->mtx);
    return status;
}