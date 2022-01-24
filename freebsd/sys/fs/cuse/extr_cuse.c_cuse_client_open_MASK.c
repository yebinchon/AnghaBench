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
struct thread {int dummy; } ;
struct cuse_server_dev {struct cuse_dev* user_dev; struct cuse_server* server; } ;
struct cuse_server {scalar_t__ refs; scalar_t__ pid; scalar_t__ is_closing; int /*<<< orphan*/  hcli; } ;
struct cuse_dev {int dummy; } ;
struct TYPE_3__ {int command; struct cuse_dev* dev; } ;
struct cuse_client_command {int /*<<< orphan*/  cv; int /*<<< orphan*/  sx; struct cuse_client* client; TYPE_1__ sub; } ;
struct cuse_client {int fflags; struct cuse_client_command* cmds; struct cuse_server* server; struct cuse_server_dev* server_dev; } ;
struct cdev {struct cuse_server_dev* si_drv1; } ;
struct TYPE_4__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int CUSE_CMD_MAX ; 
 size_t CUSE_CMD_OPEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_CUSE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cuse_client*,int /*<<< orphan*/ ) ; 
 TYPE_2__* curproc ; 
 int /*<<< orphan*/  cuse_client_free ; 
 int FUNC1 (struct cuse_client_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cuse_client_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_client_command*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cuse_server*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (struct cuse_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC12 (struct cuse_client*,int /*<<< orphan*/ ) ; 
 struct cuse_client* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC16(struct cdev *dev, int fflags, int devtype, struct thread *td)
{
	struct cuse_client_command *pccmd;
	struct cuse_server_dev *pcsd;
	struct cuse_client *pcc;
	struct cuse_server *pcs;
	struct cuse_dev *pcd;
	int error;
	int n;

	FUNC6();
	pcsd = dev->si_drv1;
	if (pcsd != NULL) {
		pcs = pcsd->server;
		pcd = pcsd->user_dev;
		/*
		 * Check that the refcount didn't wrap and that the
		 * same process is not both client and server. This
		 * can easily lead to deadlocks when destroying the
		 * CUSE character device nodes:
		 */
		pcs->refs++;
		if (pcs->refs < 0 || pcs->pid == curproc->p_pid) {
			/* overflow or wrong PID */
			pcs->refs--;
			pcsd = NULL;
		}
	} else {
		pcs = NULL;
		pcd = NULL;
	}
	FUNC8();

	if (pcsd == NULL)
		return (EINVAL);

	pcc = FUNC13(sizeof(*pcc), M_CUSE, M_WAITOK | M_ZERO);
	if (pcc == NULL) {
		/* drop reference on server */
		FUNC7(pcs);
		return (ENOMEM);
	}
	if (FUNC11(pcc, &cuse_client_free)) {
		FUNC14("Cuse: Cannot set cdevpriv.\n");
		/* drop reference on server */
		FUNC7(pcs);
		FUNC12(pcc, M_CUSE);
		return (ENOMEM);
	}
	pcc->fflags = fflags;
	pcc->server_dev = pcsd;
	pcc->server = pcs;

	for (n = 0; n != CUSE_CMD_MAX; n++) {

		pccmd = &pcc->cmds[n];

		pccmd->sub.dev = pcd;
		pccmd->sub.command = n;
		pccmd->client = pcc;

		FUNC15(&pccmd->sx, "cuse-client-sx");
		FUNC9(&pccmd->cv, "cuse-client-cv");
	}

	FUNC6();

	/* cuse_client_free() assumes that the client is listed somewhere! */
	/* always enqueue */

	FUNC0(&pcs->hcli, pcc, entry);

	/* check if server is closing */
	if ((pcs->is_closing != 0) || (dev->si_drv1 == NULL)) {
		error = EINVAL;
	} else {
		error = 0;
	}
	FUNC8();

	if (error) {
		FUNC10();	/* XXX bugfix */
		return (error);
	}
	pccmd = &pcc->cmds[CUSE_CMD_OPEN];

	FUNC3(pccmd);

	FUNC6();
	FUNC2(pccmd, 0, 0, pcc->fflags, 0);

	error = FUNC1(pccmd, 0, 0);
	FUNC8();

	if (error < 0) {
		error = FUNC5(error);
	} else {
		error = 0;
	}

	FUNC4(pccmd);

	if (error)
		FUNC10();	/* XXX bugfix */

	return (error);
}