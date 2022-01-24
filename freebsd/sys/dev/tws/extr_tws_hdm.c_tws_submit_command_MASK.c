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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  reqs_in; } ;
struct tws_softc {int /*<<< orphan*/  io_lock; TYPE_2__ stats; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  bus_mfa_handle; int /*<<< orphan*/  bus_mfa_tag; scalar_t__ obfl_q_overrun; } ;
struct tws_request {int cmd_pkt_phy; scalar_t__ type; TYPE_1__* cmd_pkt; } ;
struct tws_command_packet {int dummy; } ;
struct tws_command_header {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int TWS_BIT0 ; 
 int /*<<< orphan*/  TWS_BUSY_Q ; 
 int TWS_FIFO_EMPTY ; 
 int /*<<< orphan*/  TWS_I2O0_HIBQPH ; 
 int /*<<< orphan*/  TWS_I2O0_HIBQPL ; 
 int TWS_REQ_RET_PEND_NOMFA ; 
 int TWS_REQ_RET_SUBMIT_SUCCESS ; 
 scalar_t__ TWS_REQ_TYPE_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tws_softc*,int /*<<< orphan*/ ,int,int) ; 

int
FUNC8(struct tws_softc *sc, struct tws_request *req)
{
    u_int32_t regl, regh;
    u_int64_t mfa=0;
    
    /* 
     * mfa register  read and write must be in order. 
     * Get the io_lock to protect against simultinous 
     * passthru calls 
     */
    FUNC2(&sc->io_lock);

    if ( sc->obfl_q_overrun ) {
        FUNC4(sc);
    }
       
#ifdef TWS_PULL_MODE_ENABLE
    regh = (u_int32_t)(req->cmd_pkt_phy >> 32);
    /* regh = regh | TWS_MSG_ACC_MASK; */ 
    mfa = regh;
    mfa = mfa << 32;
    regl = (u_int32_t)req->cmd_pkt_phy;
    regl = regl | TWS_BIT0;
    mfa = mfa | regl;
#else
    regh = FUNC6(sc, TWS_I2O0_HIBQPH, 4);
    mfa = regh;
    mfa = mfa << 32;
    regl = FUNC6(sc, TWS_I2O0_HIBQPL, 4);
    mfa = mfa | regl;
#endif

    FUNC3(&sc->io_lock);

    if ( mfa == TWS_FIFO_EMPTY ) {
        FUNC0(sc, "inbound fifo empty", mfa, 0);

        /* 
         * Generally we should not get here.
         * If the fifo was empty we can't do any thing much 
         * retry later 
         */
        return(TWS_REQ_RET_PEND_NOMFA);

    }

#ifndef TWS_PULL_MODE_ENABLE
    for (int i=mfa; i<(sizeof(struct tws_command_packet)+ mfa - 
                            sizeof( struct tws_command_header)); i++) {

        FUNC1(sc->bus_mfa_tag, sc->bus_mfa_handle,i, 
                               ((u_int8_t *)&req->cmd_pkt->cmd)[i-mfa]);

    }
#endif

    if ( req->type == TWS_REQ_TYPE_SCSI_IO ) {
        FUNC2(&sc->q_lock);
        FUNC5(sc, req, TWS_BUSY_Q);
        FUNC3(&sc->q_lock);
    }

    /* 
     * mfa register  read and write must be in order. 
     * Get the io_lock to protect against simultinous 
     * passthru calls 
     */
    FUNC2(&sc->io_lock);

    FUNC7(sc, TWS_I2O0_HIBQPH, regh, 4);
    FUNC7(sc, TWS_I2O0_HIBQPL, regl, 4);

    sc->stats.reqs_in++;
    FUNC3(&sc->io_lock);
    
    return(TWS_REQ_RET_SUBMIT_SUCCESS);

}