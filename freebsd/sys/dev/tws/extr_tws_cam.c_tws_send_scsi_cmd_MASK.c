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
typedef  int u_int8_t ;
struct tws_softc {int dummy; } ;
struct tws_request {int /*<<< orphan*/  timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/ * data; int /*<<< orphan*/  length; int /*<<< orphan*/  request_id; struct tws_command_packet* cmd_pkt; int /*<<< orphan*/  cb; } ;
struct TYPE_3__ {int sgl_offset; int* cdb; int /*<<< orphan*/  lun_l4__req_id; scalar_t__ unit; scalar_t__ status; int /*<<< orphan*/  res__opcode; } ;
struct TYPE_4__ {TYPE_1__ pkt_a; } ;
struct tws_command_packet {TYPE_2__ cmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TWS ; 
 int /*<<< orphan*/  TWS_DIR_IN ; 
 int /*<<< orphan*/  TWS_FW_CMD_EXECUTE_SCSI ; 
 int TWS_IO_TIMEOUT ; 
 int /*<<< orphan*/  TWS_REQ_TYPE_AEN_FETCH ; 
 int /*<<< orphan*/  TWS_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,struct tws_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct tws_request*) ; 
 int hz ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tws_aen_complete ; 
 struct tws_request* FUNC4 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tws_softc*,struct tws_request*) ; 
 int /*<<< orphan*/  tws_timeout ; 

int
FUNC6(struct tws_softc *sc, int cmd)
{
    struct tws_request *req;
    struct tws_command_packet *cmd_pkt;
    int error;

    FUNC0(sc, "entry",sc, cmd);
    req = FUNC4(sc, TWS_REQ_TYPE_AEN_FETCH);

    if ( req == NULL )
        return(ENOMEM);

    req->cb = tws_aen_complete;

    cmd_pkt = req->cmd_pkt;
    cmd_pkt->cmd.pkt_a.res__opcode = TWS_FW_CMD_EXECUTE_SCSI;
    cmd_pkt->cmd.pkt_a.status = 0;
    cmd_pkt->cmd.pkt_a.unit = 0;
    cmd_pkt->cmd.pkt_a.sgl_offset = 16;
    cmd_pkt->cmd.pkt_a.lun_l4__req_id = req->request_id;

    cmd_pkt->cmd.pkt_a.cdb[0] = (u_int8_t)cmd;
    cmd_pkt->cmd.pkt_a.cdb[4] = 128;

    req->length = TWS_SECTOR_SIZE;
    req->data = FUNC3(TWS_SECTOR_SIZE, M_TWS, M_NOWAIT);
    if ( req->data == NULL )
        return(ENOMEM);
    FUNC1(req->data, TWS_SECTOR_SIZE);
    req->flags = TWS_DIR_IN;

    FUNC2(&req->timeout, (TWS_IO_TIMEOUT * hz), tws_timeout, req);
    error = FUNC5(sc, req);
    return(error);

}