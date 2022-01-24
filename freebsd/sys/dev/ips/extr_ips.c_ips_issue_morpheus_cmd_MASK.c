#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int timeout; int /*<<< orphan*/  command_phys_addr; TYPE_3__* sc; int /*<<< orphan*/  (* callback ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ ips_command_t ;
struct TYPE_7__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int IPS_OFFLINE ; 
 int /*<<< orphan*/  MORPHEUS_REG_IQPR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(ips_command_t *command)
{
	/* hmmm, is there a cleaner way to do this? */
	if(command->sc->state & IPS_OFFLINE){
		FUNC0(command, EINVAL);
		command->callback(command);
		return;
	}
	command->timeout = 10;
	FUNC1(command->sc, MORPHEUS_REG_IQPR, command->command_phys_addr);
}