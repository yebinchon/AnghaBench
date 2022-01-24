#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int max_cmds; int /*<<< orphan*/  state; TYPE_2__* staticcmd; int /*<<< orphan*/  free_cmd_list; int /*<<< orphan*/  sg_dmatag; int /*<<< orphan*/  command_dmatag; TYPE_2__* commandarray; } ;
typedef  TYPE_1__ ips_softc_t ;
struct TYPE_8__ {int id; int /*<<< orphan*/  data_dmamap; int /*<<< orphan*/  data_dmatag; int /*<<< orphan*/  command_dmamap; int /*<<< orphan*/  command_buffer; int /*<<< orphan*/  command_phys_addr; TYPE_1__* sc; } ;
typedef  TYPE_2__ ips_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IPS_COMMAND_LEN ; 
 int /*<<< orphan*/  IPS_OFFLINE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ips_cmd_dmaload ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static int FUNC8(ips_softc_t *sc)
{
	int i;
	ips_command_t *command;

	sc->commandarray = (ips_command_t *)FUNC7(sizeof(ips_command_t) *
	    sc->max_cmds, M_DEVBUF, M_NOWAIT|M_ZERO);
	if (sc->commandarray == NULL)
		return (ENOMEM);

	FUNC0(&sc->free_cmd_list);
	for(i = 0; i < sc->max_cmds; i++){
		command = &sc->commandarray[i];
		command->id = i;
		command->sc = sc;

		if(FUNC4(sc->command_dmatag,&command->command_buffer,
		    BUS_DMA_NOWAIT, &command->command_dmamap))
			goto error;
		FUNC3(sc->command_dmatag, command->command_dmamap, 
				command->command_buffer,IPS_COMMAND_LEN, 
				ips_cmd_dmaload, command, BUS_DMA_NOWAIT);
		if(!command->command_phys_addr){
			FUNC5(sc->command_dmatag, 
			    command->command_buffer, command->command_dmamap);
			goto error;
		}

		if (i != 0) {
			command->data_dmatag = sc->sg_dmatag;
			if (FUNC2(command->data_dmatag, 0,
			    &command->data_dmamap))
				goto error;
			FUNC1(&sc->free_cmd_list, command, next);	
		} else
			sc->staticcmd = command;
	}
	sc->state &= ~IPS_OFFLINE;
	return 0;
error:
	FUNC6(sc);
	return ENOMEM;
}