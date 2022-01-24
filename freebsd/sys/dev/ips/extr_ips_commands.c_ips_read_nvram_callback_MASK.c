#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cmd_sema; int /*<<< orphan*/  (* ips_issue_cmd ) (TYPE_3__*) ;int /*<<< orphan*/  command_dmatag; } ;
typedef  TYPE_1__ ips_softc_t ;
struct TYPE_9__ {int pagenum; int /*<<< orphan*/  buffaddr; scalar_t__ rw; int /*<<< orphan*/  id; int /*<<< orphan*/  command; } ;
typedef  TYPE_2__ ips_rw_nvram_cmd ;
struct TYPE_10__ {int /*<<< orphan*/  data_dmamap; int /*<<< orphan*/  data_dmatag; int /*<<< orphan*/  command_dmamap; int /*<<< orphan*/  id; scalar_t__ command_buffer; TYPE_1__* sc; } ;
typedef  TYPE_3__ ips_command_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_4__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IPS_RW_NVRAM_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(void *cmdptr, bus_dma_segment_t *segments,int segnum, int error)
{
	ips_softc_t *sc;
	ips_command_t *command = cmdptr;
	ips_rw_nvram_cmd *command_struct;
	sc = command->sc;
	if(error){
		FUNC1(command, error);
		FUNC2("ips: error = %d in ips_read_nvram_callback\n", error);
		return;
	}
	command_struct = (ips_rw_nvram_cmd *)command->command_buffer;
	command_struct->command = IPS_RW_NVRAM_CMD;
	command_struct->id = command->id;
	command_struct->pagenum = 5;
	command_struct->rw = 0;
	command_struct->buffaddr = segments[0].ds_addr;

	FUNC0(sc->command_dmatag, command->command_dmamap, 
			BUS_DMASYNC_PREWRITE);
	FUNC0(command->data_dmatag, command->data_dmamap, 
			BUS_DMASYNC_PREREAD);
	sc->ips_issue_cmd(command);
	if (FUNC3(&sc->cmd_sema, 30*hz) != 0) {
		FUNC1(command, ETIMEDOUT);
		return;
	}
	FUNC0(command->data_dmatag, command->data_dmamap, 
			BUS_DMASYNC_POSTWRITE);
}