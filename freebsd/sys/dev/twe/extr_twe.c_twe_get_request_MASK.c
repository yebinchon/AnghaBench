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
struct twe_softc {int dummy; } ;
struct twe_request {int /*<<< orphan*/ * tr_complete; scalar_t__ tr_flags; int /*<<< orphan*/  tr_status; int /*<<< orphan*/ * tr_private; int /*<<< orphan*/ * tr_data; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef  TYPE_2__ TWE_Command ;

/* Variables and functions */
 int /*<<< orphan*/  TWE_CMD_SETUP ; 
 TYPE_2__* FUNC0 (struct twe_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  dumping ; 
 struct twe_request* FUNC3 (struct twe_softc*) ; 

__attribute__((used)) static int
FUNC4(struct twe_softc *sc, struct twe_request **tr)
{
    TWE_Command		*cmd;
    FUNC2(4);

    if (!dumping)
	FUNC1(sc);

    /* try to reuse an old buffer */
    *tr = FUNC3(sc);

    /* initialise some fields to their defaults */
    if (*tr != NULL) {
	cmd = FUNC0(*tr);
	(*tr)->tr_data = NULL;
	(*tr)->tr_private = NULL;
	(*tr)->tr_status = TWE_CMD_SETUP;		/* command is in setup phase */
	(*tr)->tr_flags = 0;
	(*tr)->tr_complete = NULL;
	cmd->generic.status = 0;			/* before submission to controller */
	cmd->generic.flags = 0;				/* not used */
    }
    return(*tr == NULL);
}