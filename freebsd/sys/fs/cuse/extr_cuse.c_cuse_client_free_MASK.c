#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cuse_server {int /*<<< orphan*/  hcli; } ;
struct cuse_client_command {int /*<<< orphan*/  cv; int /*<<< orphan*/  sx; } ;
struct cuse_client {struct cuse_server* server; struct cuse_client_command* cmds; } ;

/* Variables and functions */
 int CUSE_CMD_MAX ; 
 int /*<<< orphan*/  M_CUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cuse_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cuse_client*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cuse_server*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC6 (struct cuse_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct cuse_client *pcc = arg;
	struct cuse_client_command *pccmd;
	struct cuse_server *pcs;
	int n;

	FUNC2();
	FUNC1(pcc);
	FUNC0(&pcc->server->hcli, pcc, entry);
	FUNC4();

	for (n = 0; n != CUSE_CMD_MAX; n++) {

		pccmd = &pcc->cmds[n];

		FUNC7(&pccmd->sx);
		FUNC5(&pccmd->cv);
	}

	pcs = pcc->server;

	FUNC6(pcc, M_CUSE);

	/* drop reference on server */
	FUNC3(pcs);
}