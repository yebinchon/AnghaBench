#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_12__ {int /*<<< orphan*/  cmd_sema; int /*<<< orphan*/  (* ips_issue_cmd ) (TYPE_3__*) ;int /*<<< orphan*/  command_dmatag; TYPE_1__ ffdc_resettime; int /*<<< orphan*/  ffdc_resetcount; } ;
typedef  TYPE_2__ ips_softc_t ;
struct TYPE_13__ {int /*<<< orphan*/  command_dmamap; int /*<<< orphan*/  id; scalar_t__ command_buffer; int /*<<< orphan*/  callback; TYPE_2__* sc; } ;
typedef  TYPE_3__ ips_command_t ;
struct TYPE_14__ {int reset_type; int /*<<< orphan*/  reset_count; int /*<<< orphan*/  id; int /*<<< orphan*/  command; } ;
typedef  TYPE_4__ ips_adapter_ffdc_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IPS_FFDC_CMD ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ips_wakeup_callback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(ips_command_t *command)
{
	ips_softc_t *sc = command->sc;
	ips_adapter_ffdc_cmd *command_struct;

	FUNC1(10,"ips test: got a command, building ffdc reset command\n");
	command->callback = ips_wakeup_callback;
	command_struct = (ips_adapter_ffdc_cmd *)command->command_buffer;
	command_struct->command = IPS_FFDC_CMD;
	command_struct->id = command->id;
	command_struct->reset_count = sc->ffdc_resetcount;
	command_struct->reset_type  = 0x0;
	FUNC3(command_struct, sc->ffdc_resettime.tv_sec);

	FUNC2(sc->command_dmatag, command->command_dmamap,
			BUS_DMASYNC_PREWRITE);
	sc->ips_issue_cmd(command);
	if (FUNC0(command) == 0)
		FUNC5(&sc->cmd_sema);
	FUNC4(sc, command);
	return 0;
}