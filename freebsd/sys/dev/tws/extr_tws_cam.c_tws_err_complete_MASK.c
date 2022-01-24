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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
typedef  size_t u_int16_t ;
struct tws_softc {int obfl_q_overrun; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  tws_dev; struct tws_request* reqs; } ;
struct tws_sense {struct tws_command_header* hdr; } ;
struct tws_request {size_t error_code; int type; } ;
struct TYPE_2__ {size_t request_id; int size_header; } ;
struct tws_command_header {TYPE_1__ header_desc; } ;

/* Variables and functions */
 int TWS_BIT13 ; 
 int /*<<< orphan*/  TWS_I2O0_HOBQPH ; 
 int /*<<< orphan*/  TWS_I2O0_HOBQPL ; 
 int /*<<< orphan*/  TWS_I2O0_STATUS ; 
 size_t TWS_REQ_RET_SUBMIT_SUCCESS ; 
#define  TWS_REQ_TYPE_GETSET_PARAM 130 
#define  TWS_REQ_TYPE_PASSTHRU 129 
#define  TWS_REQ_TYPE_SCSI_IO 128 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tws_sense* FUNC4 (struct tws_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tws_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct tws_request*,struct tws_command_header*) ; 
 int FUNC7 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tws_request*,struct tws_command_header*) ; 
 int /*<<< orphan*/  FUNC9 (struct tws_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC10(struct tws_softc *sc, u_int64_t mfa)
{
    struct tws_command_header *hdr;
    struct tws_sense *sen;
    struct tws_request *req;
    u_int16_t req_id;
    u_int32_t reg, status;

    if ( !mfa ) {
        FUNC0(sc, "null mfa", 0, mfa);
        return;
    } else {
        /* lookup the sense */
        sen = FUNC4(sc, mfa);
        if ( sen == NULL ) {
            FUNC0(sc, "found null req", 0, mfa);
            return;
        }
        hdr = sen->hdr;
        FUNC0(sc, "sen, hdr", sen, hdr);
        req_id = hdr->header_desc.request_id;
        req = &sc->reqs[req_id];
        FUNC0(sc, "req, id", req, req_id);
        if ( req->error_code != TWS_REQ_RET_SUBMIT_SUCCESS )
            FUNC0(sc, "submit failure?", 0, req->error_code);
    }

    switch (req->type) {
        case TWS_REQ_TYPE_PASSTHRU :
            FUNC6(req, hdr);
            break;
        case TWS_REQ_TYPE_GETSET_PARAM :
            FUNC5(req);
            break;
        case TWS_REQ_TYPE_SCSI_IO :
            FUNC8(req, hdr);
            break;
            
    }

    FUNC2(&sc->io_lock);
    hdr->header_desc.size_header = 128;
    reg = (u_int32_t)( mfa>>32);
    FUNC9(sc, TWS_I2O0_HOBQPH, reg, 4);
    reg = (u_int32_t)(mfa);
    FUNC9(sc, TWS_I2O0_HOBQPL, reg, 4);

    status = FUNC7(sc, TWS_I2O0_STATUS, 4);
    if ( status & TWS_BIT13 ) {
        FUNC1(sc->tws_dev,  "OBFL Overrun\n");
        sc->obfl_q_overrun = true;
    }
    FUNC3(&sc->io_lock);
}