#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twe_softc {scalar_t__ twe_host_id; } ;
struct twe_request {int dummy; } ;
struct TYPE_4__ {int size; int message_credits; scalar_t__ host_id; scalar_t__ response_queue_pointer; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {TYPE_1__ initconnection; } ;
typedef  TYPE_2__ TWE_Command ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct twe_request*) ; 
 int TWE_INIT_MESSAGE_CREDITS ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  TWE_OP_INIT_CONNECTION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct twe_softc*,struct twe_request**) ; 
 int FUNC4 (struct twe_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_request*) ; 

__attribute__((used)) static int
FUNC6(struct twe_softc *sc, int mode)
{
    struct twe_request	*tr;
    TWE_Command		*cmd;
    int			error;
    
    FUNC2(4);

    FUNC1(sc);

    /* get a command */
    if (FUNC3(sc, &tr))
	return(0);

    /* build the command */
    cmd = FUNC0(tr);
    cmd->initconnection.opcode = TWE_OP_INIT_CONNECTION;
    cmd->initconnection.size = 3;
    cmd->initconnection.host_id = 0;
    cmd->initconnection.message_credits = mode;
    cmd->initconnection.response_queue_pointer = 0;

    /* submit the command */
    error = FUNC4(tr, 0 /* usetmp */);
    FUNC5(tr);

    if (mode == TWE_INIT_MESSAGE_CREDITS)
	sc->twe_host_id = cmd->initconnection.host_id;
    return(error);
}