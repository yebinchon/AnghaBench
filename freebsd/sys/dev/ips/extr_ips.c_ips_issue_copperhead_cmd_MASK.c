#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int timeout; TYPE_3__* sc; int /*<<< orphan*/  command_phys_addr; int /*<<< orphan*/  (* callback ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ ips_command_t ;
struct TYPE_9__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPPER_CMD_START ; 
 int /*<<< orphan*/  COPPER_REG_CCCR ; 
 int /*<<< orphan*/  COPPER_REG_CCSAR ; 
 int COPPER_SEM_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int IPS_OFFLINE ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(ips_command_t *command)
{
	int i;
	/* hmmm, is there a cleaner way to do this? */
	if(command->sc->state & IPS_OFFLINE){
		FUNC2(command, EINVAL);
		command->callback(command);
		return;
	}
	command->timeout = 10;
	for(i = 0; FUNC1(command->sc, COPPER_REG_CCCR) & COPPER_SEM_BIT;
	    i++ ){
		if( i == 20){
FUNC5("sem bit still set, can't send a command\n");
			return;
		}
		FUNC0(500);/* need to do a delay here */
	}
	FUNC4(command->sc, COPPER_REG_CCSAR, command->command_phys_addr);
	FUNC3(command->sc, COPPER_REG_CCCR, COPPER_CMD_START);
}