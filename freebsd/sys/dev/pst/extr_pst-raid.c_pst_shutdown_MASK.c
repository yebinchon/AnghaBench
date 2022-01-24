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
struct pst_softc {TYPE_2__* iop; TYPE_1__* lct; } ;
struct i2o_bsa_cache_flush_message {int version_offset; int message_flags; int message_size; int control_flags; int /*<<< orphan*/  function; int /*<<< orphan*/  initiator_address; int /*<<< orphan*/  target_address; } ;
struct i2o_basic_message {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {scalar_t__ ibase; } ;
struct TYPE_4__ {int /*<<< orphan*/  local_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2O_BSA_CACHE_FLUSH ; 
 int /*<<< orphan*/  I2O_TID_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct i2o_bsa_cache_flush_message*,int) ; 
 struct pst_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,struct i2o_basic_message*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    struct pst_softc *psc = FUNC1(dev);
    struct i2o_bsa_cache_flush_message *msg;
    int mfa;

    mfa = FUNC2(psc->iop);
    msg = (struct i2o_bsa_cache_flush_message *)(psc->iop->ibase + mfa);
    FUNC0(msg, sizeof(struct i2o_bsa_cache_flush_message));
    msg->version_offset = 0x01;
    msg->message_flags = 0x0;
    msg->message_size = sizeof(struct i2o_bsa_cache_flush_message) >> 2;
    msg->target_address = psc->lct->local_tid;
    msg->initiator_address = I2O_TID_HOST;
    msg->function = I2O_BSA_CACHE_FLUSH;
    msg->control_flags = 0x0; /* 0x80 = post progress reports */
    if (FUNC3(psc->iop, mfa, (struct i2o_basic_message *)msg))
	FUNC4("pst: shutdown failed!\n");
    return 0;
}