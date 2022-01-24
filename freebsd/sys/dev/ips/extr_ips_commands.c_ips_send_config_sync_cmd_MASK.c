#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  cmd_sema; int /*<<< orphan*/  (* ips_issue_cmd ) (TYPE_3__*) ;int /*<<< orphan*/  command_dmatag; } ;
typedef  TYPE_1__ ips_softc_t ;
struct TYPE_10__ {int /*<<< orphan*/  reserve2; int /*<<< orphan*/  id; int /*<<< orphan*/  command; } ;
typedef  TYPE_2__ ips_generic_cmd ;
struct TYPE_11__ {int /*<<< orphan*/  command_dmamap; int /*<<< orphan*/  id; scalar_t__ command_buffer; int /*<<< orphan*/  callback; TYPE_1__* sc; } ;
typedef  TYPE_3__ ips_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IPS_CONFIG_SYNC_CMD ; 
 int /*<<< orphan*/  IPS_POCL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ips_wakeup_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(ips_command_t *command)
{
	ips_softc_t *sc = command->sc;
	ips_generic_cmd *command_struct;

	FUNC1(10,"ips test: got a command, building flush command\n");
	command->callback = ips_wakeup_callback;
	command_struct = (ips_generic_cmd *)command->command_buffer;
	command_struct->command = IPS_CONFIG_SYNC_CMD;
	command_struct->id = command->id;
	command_struct->reserve2 = IPS_POCL;
	FUNC2(sc->command_dmatag, command->command_dmamap, 
			BUS_DMASYNC_PREWRITE);
	sc->ips_issue_cmd(command);
	if (FUNC0(command) == 0)
		FUNC4(&sc->cmd_sema);
	FUNC3(sc, command);
	return 0;
}