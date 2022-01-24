#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int max_cmds; TYPE_2__* commandarray; int /*<<< orphan*/ * staticcmd; int /*<<< orphan*/  state; int /*<<< orphan*/  command_dmatag; int /*<<< orphan*/  used_commands; } ;
typedef  TYPE_1__ ips_softc_t ;
struct TYPE_6__ {scalar_t__ command_phys_addr; int /*<<< orphan*/ * data_dmamap; int /*<<< orphan*/  data_dmatag; int /*<<< orphan*/  command_dmamap; int /*<<< orphan*/  command_buffer; } ;
typedef  TYPE_2__ ips_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_OFFLINE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ips_softc_t *sc)
{
	int i, error = -1;
	ips_command_t *command;

	if(!sc->used_commands){
		for(i = 0; i < sc->max_cmds; i++){

			command = &sc->commandarray[i];

			if(command->command_phys_addr == 0)
				continue;
			FUNC1(sc->command_dmatag, 
					  command->command_dmamap);
			FUNC2(sc->command_dmatag, 
					command->command_buffer,
					command->command_dmamap);
			if (command->data_dmamap != NULL)
				FUNC0(command->data_dmatag,
				    command->data_dmamap);
		}
		error = 0;
		sc->state |= IPS_OFFLINE;
	}
	sc->staticcmd = NULL;
	FUNC3(sc->commandarray, M_DEVBUF);
	return error;
}