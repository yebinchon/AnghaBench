#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct cuse_command {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tqe_prev; } ;
struct cuse_server_dev {int error; int got_signal; struct cuse_dev* user_dev; TYPE_4__* kern_dev; struct cuse_server* server; struct cuse_client* client; int /*<<< orphan*/  cv; int /*<<< orphan*/  command; int /*<<< orphan*/ * entered; struct cuse_command sub; TYPE_1__ entry; } ;
struct cuse_server {int /*<<< orphan*/  hdev; int /*<<< orphan*/  head; int /*<<< orphan*/  is_closing; int /*<<< orphan*/  cv; } ;
struct cuse_dev {int dummy; } ;
struct cuse_data_chunk {int /*<<< orphan*/  peer_ptr; } ;
struct cuse_create_dev {int permissions; int /*<<< orphan*/ * devname; int /*<<< orphan*/  group_id; int /*<<< orphan*/  user_id; struct cuse_dev* dev; } ;
struct cuse_client_command {int error; int got_signal; struct cuse_dev* user_dev; TYPE_4__* kern_dev; struct cuse_server* server; struct cuse_client* client; int /*<<< orphan*/  cv; int /*<<< orphan*/  command; int /*<<< orphan*/ * entered; struct cuse_command sub; TYPE_1__ entry; } ;
struct cuse_client {TYPE_3__* cmds; } ;
struct cuse_alloc_info {int /*<<< orphan*/  alloc_nr; int /*<<< orphan*/  page_count; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_8__ {struct cuse_server_dev* si_drv1; } ;
struct TYPE_6__ {uintptr_t per_file_handle; } ;
struct TYPE_7__ {TYPE_2__ sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUSE_ALLOC_PAGES_MAX ; 
 int /*<<< orphan*/  CUSE_ALLOC_UNIT_MAX ; 
 int /*<<< orphan*/  CUSE_BUF_MAX_PTR ; 
 int /*<<< orphan*/  CUSE_BUF_MIN_PTR ; 
 int CUSE_CMD_MAX ; 
 int /*<<< orphan*/  CUSE_CMD_SYNC ; 
 int FUNC0 (int) ; 
 int CUSE_ID_MASK ; 
#define  CUSE_IOCTL_ALLOC_MEMORY 142 
#define  CUSE_IOCTL_ALLOC_UNIT 141 
#define  CUSE_IOCTL_ALLOC_UNIT_BY_ID 140 
#define  CUSE_IOCTL_CREATE_DEV 139 
#define  CUSE_IOCTL_DESTROY_DEV 138 
#define  CUSE_IOCTL_FREE_MEMORY 137 
#define  CUSE_IOCTL_FREE_UNIT 136 
#define  CUSE_IOCTL_FREE_UNIT_BY_ID 135 
#define  CUSE_IOCTL_GET_COMMAND 134 
#define  CUSE_IOCTL_GET_SIG 133 
#define  CUSE_IOCTL_READ_DATA 132 
#define  CUSE_IOCTL_SELWAKEUP 131 
#define  CUSE_IOCTL_SET_PFH 130 
#define  CUSE_IOCTL_SYNC_COMMAND 129 
#define  CUSE_IOCTL_WRITE_DATA 128 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MAKEDEV_CHECKNAME ; 
 int /*<<< orphan*/  M_CUSE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 struct cuse_server_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cuse_server_dev*,int /*<<< orphan*/ ) ; 
 struct cuse_server_dev* FUNC3 (struct cuse_server_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cuse_server_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * curthread ; 
 int FUNC5 (struct cuse_server*,int) ; 
 int /*<<< orphan*/  cuse_client_devsw ; 
 int FUNC6 (struct cuse_server*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  cuse_mtx ; 
 int FUNC8 (struct cuse_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cuse_server_dev*,struct cuse_data_chunk*,int) ; 
 struct cuse_server_dev* FUNC10 (struct cuse_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cuse_server_dev*) ; 
 int FUNC12 (struct cuse_server*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cuse_server**) ; 
 int FUNC14 (struct cuse_server_dev*,struct cuse_data_chunk*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct cuse_server*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC20 (struct cuse_server_dev*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 struct cuse_server_dev* FUNC22 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(struct cdev *dev, unsigned long cmd,
    caddr_t data, int fflag, struct thread *td)
{
	struct cuse_server *pcs;
	int error;

	error = FUNC13(&pcs);
	if (error != 0)
		return (error);

	switch (cmd) {
		struct cuse_client_command *pccmd;
		struct cuse_client *pcc;
		struct cuse_command *pcmd;
		struct cuse_alloc_info *pai;
		struct cuse_create_dev *pcd;
		struct cuse_server_dev *pcsd;
		struct cuse_data_chunk *pchk;
		int n;

	case CUSE_IOCTL_GET_COMMAND:
		pcmd = (void *)data;

		FUNC7();

		while ((pccmd = FUNC1(&pcs->head)) == NULL) {
			error = FUNC19(&pcs->cv, &cuse_mtx);

			if (pcs->is_closing)
				error = ENXIO;

			if (error) {
				FUNC17();
				return (error);
			}
		}

		FUNC4(&pcs->head, pccmd, entry);
		pccmd->entry.tqe_prev = NULL;

		pccmd->entered = curthread;

		*pcmd = pccmd->sub;

		FUNC17();

		break;

	case CUSE_IOCTL_SYNC_COMMAND:

		FUNC7();
		while ((pccmd = FUNC10(pcs, curthread)) != NULL) {

			/* send sync command */
			pccmd->entered = NULL;
			pccmd->error = *(int *)data;
			pccmd->command = CUSE_CMD_SYNC;

			/* signal peer, if any */
			FUNC18(&pccmd->cv);
		}
		FUNC17();

		break;

	case CUSE_IOCTL_ALLOC_UNIT:

		FUNC7();
		n = FUNC5(pcs,
		    FUNC0(0));
		FUNC17();

		if (n < 0)
			error = ENOMEM;
		else
			*(int *)data = n;
		break;

	case CUSE_IOCTL_ALLOC_UNIT_BY_ID:

		n = *(int *)data;

		n = (n & CUSE_ID_MASK);

		FUNC7();
		n = FUNC5(pcs, n);
		FUNC17();

		if (n < 0)
			error = ENOMEM;
		else
			*(int *)data = n;
		break;

	case CUSE_IOCTL_FREE_UNIT:

		n = *(int *)data;

		n = FUNC0(n);

		FUNC7();
		error = FUNC6(pcs, n);
		FUNC17();
		break;

	case CUSE_IOCTL_FREE_UNIT_BY_ID:

		n = *(int *)data;

		FUNC7();
		error = FUNC6(pcs, n);
		FUNC17();
		break;

	case CUSE_IOCTL_ALLOC_MEMORY:

		pai = (void *)data;

		if (pai->alloc_nr >= CUSE_ALLOC_UNIT_MAX) {
			error = ENOMEM;
			break;
		}
		if (pai->page_count >= CUSE_ALLOC_PAGES_MAX) {
			error = ENOMEM;
			break;
		}
		error = FUNC8(pcs,
		    pai->alloc_nr, pai->page_count);
		break;

	case CUSE_IOCTL_FREE_MEMORY:
		pai = (void *)data;

		if (pai->alloc_nr >= CUSE_ALLOC_UNIT_MAX) {
			error = ENOMEM;
			break;
		}
		error = FUNC12(pcs, pai->alloc_nr);
		break;

	case CUSE_IOCTL_GET_SIG:

		FUNC7();
		pccmd = FUNC10(pcs, curthread);

		if (pccmd != NULL) {
			n = pccmd->got_signal;
			pccmd->got_signal = 0;
		} else {
			n = 0;
		}
		FUNC17();

		*(int *)data = n;

		break;

	case CUSE_IOCTL_SET_PFH:

		FUNC7();
		pccmd = FUNC10(pcs, curthread);

		if (pccmd != NULL) {
			pcc = pccmd->client;
			for (n = 0; n != CUSE_CMD_MAX; n++) {
				pcc->cmds[n].sub.per_file_handle = *(uintptr_t *)data;
			}
		} else {
			error = ENXIO;
		}
		FUNC17();
		break;

	case CUSE_IOCTL_CREATE_DEV:

		error = FUNC23(curthread, PRIV_DRIVER);
		if (error)
			break;

		pcd = (void *)data;

		/* filter input */

		pcd->devname[sizeof(pcd->devname) - 1] = 0;

		if (pcd->devname[0] == 0) {
			error = EINVAL;
			break;
		}
		FUNC16(pcd->devname);

		pcd->permissions &= 0777;

		/* try to allocate a character device */

		pcsd = FUNC22(sizeof(*pcsd), M_CUSE, M_WAITOK | M_ZERO);

		if (pcsd == NULL) {
			error = ENOMEM;
			break;
		}
		pcsd->server = pcs;

		pcsd->user_dev = pcd->dev;

		pcsd->kern_dev = FUNC21(MAKEDEV_CHECKNAME,
		    &cuse_client_devsw, 0, NULL, pcd->user_id, pcd->group_id,
		    pcd->permissions, "%s", pcd->devname);

		if (pcsd->kern_dev == NULL) {
			FUNC20(pcsd, M_CUSE);
			error = ENOMEM;
			break;
		}
		pcsd->kern_dev->si_drv1 = pcsd;

		FUNC7();
		FUNC2(&pcs->hdev, pcsd, entry);
		FUNC17();

		break;

	case CUSE_IOCTL_DESTROY_DEV:

		error = FUNC23(curthread, PRIV_DRIVER);
		if (error)
			break;

		FUNC7();

		error = EINVAL;

		pcsd = FUNC1(&pcs->hdev);
		while (pcsd != NULL) {
			if (pcsd->user_dev == *(struct cuse_dev **)data) {
				FUNC4(&pcs->hdev, pcsd, entry);
				FUNC17();
				FUNC11(pcsd);
				FUNC7();
				error = 0;
				pcsd = FUNC1(&pcs->hdev);
			} else {
				pcsd = FUNC3(pcsd, entry);
			}
		}

		FUNC17();
		break;

	case CUSE_IOCTL_WRITE_DATA:
	case CUSE_IOCTL_READ_DATA:

		FUNC7();
		pchk = (struct cuse_data_chunk *)data;

		pccmd = FUNC10(pcs, curthread);

		if (pccmd == NULL) {
			error = ENXIO;	/* invalid request */
		} else if (pchk->peer_ptr < CUSE_BUF_MIN_PTR) {
			error = EFAULT;	/* NULL pointer */
		} else if (pchk->peer_ptr < CUSE_BUF_MAX_PTR) {
			error = FUNC14(pccmd,
			    pchk, cmd == CUSE_IOCTL_READ_DATA);
		} else {
			error = FUNC9(pccmd,
			    pchk, cmd == CUSE_IOCTL_READ_DATA);
		}
		FUNC17();
		break;

	case CUSE_IOCTL_SELWAKEUP:
		FUNC7();
		/*
		 * We don't know which direction caused the event.
		 * Wakeup both!
		 */
		FUNC15(pcs);
		FUNC17();
		break;

	default:
		error = ENXIO;
		break;
	}
	return (error);
}