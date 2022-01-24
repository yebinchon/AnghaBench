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
struct cuse_server {scalar_t__ is_closing; int /*<<< orphan*/  cv; int /*<<< orphan*/  head; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tqe_prev; } ;
struct cuse_client_command {int got_signal; TYPE_2__* client; TYPE_1__ entry; } ;
struct TYPE_4__ {struct cuse_server* server; struct cuse_client_command* cmds; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 size_t CUSE_CMD_SIGNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cuse_client_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 

__attribute__((used)) static void
FUNC3(struct cuse_client_command *pccmd)
{
	struct cuse_server *pcs;

	pccmd->got_signal = 1;

	pccmd = &pccmd->client->cmds[CUSE_CMD_SIGNAL];

	pcs = pccmd->client->server;

	if ((pccmd->entry.tqe_prev == NULL) &&
	    (FUNC0(pccmd->client) == 0) &&
	    (pcs->is_closing == 0)) {
		FUNC1(&pcs->head, pccmd, entry);
		FUNC2(&pcs->cv);
	}
}