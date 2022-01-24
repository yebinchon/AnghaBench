#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * tqe_prev; } ;
struct cuse_client_command {int /*<<< orphan*/  cv; TYPE_2__ entry; } ;
struct cuse_client {TYPE_1__* server; struct cuse_client_command* cmds; int /*<<< orphan*/ * server_dev; int /*<<< orphan*/  cflags; } ;
struct TYPE_3__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cuse_client*) ; 
 int /*<<< orphan*/  CUSE_CLI_IS_CLOSING ; 
 size_t CUSE_CMD_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cuse_client_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 

__attribute__((used)) static void
FUNC3(struct cuse_client *pcc)
{
	struct cuse_client_command *pccmd;
	uint32_t n;

	if (FUNC0(pcc))
		return;

	pcc->cflags |= CUSE_CLI_IS_CLOSING;
	pcc->server_dev = NULL;

	for (n = 0; n != CUSE_CMD_MAX; n++) {

		pccmd = &pcc->cmds[n];

		if (pccmd->entry.tqe_prev != NULL) {
			FUNC1(&pcc->server->head, pccmd, entry);
			pccmd->entry.tqe_prev = NULL;
		}
		FUNC2(&pccmd->cv);
	}
}