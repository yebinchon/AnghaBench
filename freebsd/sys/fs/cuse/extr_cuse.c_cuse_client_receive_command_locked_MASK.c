#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct cuse_client_command {scalar_t__ command; int error; scalar_t__ proc_refs; int /*<<< orphan*/  cv; int /*<<< orphan*/ * proc_curr; TYPE_3__* client; } ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_5__ {int /*<<< orphan*/ * td_proc; } ;
struct TYPE_4__ {scalar_t__ is_closing; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ CUSE_CMD_NONE ; 
 int CUSE_ERR_OTHER ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC1 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  cuse_mtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct cuse_client_command *pccmd,
    uint8_t *arg_ptr, uint32_t arg_len)
{
	int error;

	error = 0;

	pccmd->proc_curr = curthread->td_proc;

	if (FUNC0(pccmd->client) ||
	    pccmd->client->server->is_closing) {
		error = CUSE_ERR_OTHER;
		goto done;
	}
	while (pccmd->command == CUSE_CMD_NONE) {
		if (error != 0) {
			FUNC3(&pccmd->cv, &cuse_mtx);
		} else {
			error = FUNC4(&pccmd->cv, &cuse_mtx);

			if (error != 0)
				FUNC1(pccmd);
		}
		if (FUNC0(pccmd->client) ||
		    pccmd->client->server->is_closing) {
			error = CUSE_ERR_OTHER;
			goto done;
		}
	}

	error = pccmd->error;
	pccmd->command = CUSE_CMD_NONE;
	FUNC2(&pccmd->cv);

done:

	/* wait until all process references are gone */

	pccmd->proc_curr = NULL;

	while (pccmd->proc_refs != 0)
		FUNC3(&pccmd->cv, &cuse_mtx);

	return (error);
}