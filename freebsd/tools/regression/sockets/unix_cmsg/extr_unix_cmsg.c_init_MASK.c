#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_9__ {int /*<<< orphan*/  sun_len; int /*<<< orphan*/  sun_family; int /*<<< orphan*/  sun_path; } ;
struct TYPE_7__ {int gid_num; int /*<<< orphan*/ * gid_arr; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
struct TYPE_6__ {int buf_size; char* buf_send; int /*<<< orphan*/ * buf_recv; } ;
struct TYPE_8__ {char* proc_name; TYPE_4__ serv_addr_sun; TYPE_2__ proc_cred; TYPE_1__ ipc_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 TYPE_3__ uc_cfg ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* work_dir ; 

__attribute__((used)) static int
FUNC13(void)
{
	struct sigaction sigact;
	size_t idx;
	int rv;

	uc_cfg.proc_name = "SERVER";

	sigact.sa_handler = SIG_IGN;
	sigact.sa_flags = 0;
	FUNC9(&sigact.sa_mask);
	if (FUNC8(SIGPIPE, &sigact, (struct sigaction *)NULL) < 0) {
		FUNC11("init: sigaction");
		return (-1);
	}

	if (uc_cfg.ipc_msg.buf_size == 0)
		uc_cfg.ipc_msg.buf_send = uc_cfg.ipc_msg.buf_recv = NULL;
	else {
		uc_cfg.ipc_msg.buf_send = FUNC6(uc_cfg.ipc_msg.buf_size);
		uc_cfg.ipc_msg.buf_recv = FUNC6(uc_cfg.ipc_msg.buf_size);
		if (uc_cfg.ipc_msg.buf_send == NULL || uc_cfg.ipc_msg.buf_recv == NULL) {
			FUNC11("init: malloc");
			return (-1);
		}
		for (idx = 0; idx < uc_cfg.ipc_msg.buf_size; ++idx)
			uc_cfg.ipc_msg.buf_send[idx] = (char)idx;
	}

	uc_cfg.proc_cred.uid = FUNC5();
	uc_cfg.proc_cred.euid = FUNC2();
	uc_cfg.proc_cred.gid = FUNC3();
	uc_cfg.proc_cred.egid = FUNC1();
	uc_cfg.proc_cred.gid_num = FUNC4(0, (gid_t *)NULL);
	if (uc_cfg.proc_cred.gid_num < 0) {
		FUNC11("init: getgroups");
		return (-1);
	}
	uc_cfg.proc_cred.gid_arr = FUNC6(uc_cfg.proc_cred.gid_num *
	    sizeof(*uc_cfg.proc_cred.gid_arr));
	if (uc_cfg.proc_cred.gid_arr == NULL) {
		FUNC11("init: malloc");
		return (-1);
	}
	if (FUNC4(uc_cfg.proc_cred.gid_num, uc_cfg.proc_cred.gid_arr) < 0) {
		FUNC11("init: getgroups");
		return (-1);
	}

	FUNC7(&uc_cfg.serv_addr_sun, 0, sizeof(uc_cfg.serv_addr_sun));
	rv = FUNC10(uc_cfg.serv_addr_sun.sun_path, sizeof(uc_cfg.serv_addr_sun.sun_path),
	    "%s/%s", work_dir, uc_cfg.proc_name);
	if (rv < 0) {
		FUNC11("init: snprintf");
		return (-1);
	}
	if ((size_t)rv >= sizeof(uc_cfg.serv_addr_sun.sun_path)) {
		FUNC12("init: not enough space for socket pathname");
		return (-1);
	}
	uc_cfg.serv_addr_sun.sun_family = PF_LOCAL;
	uc_cfg.serv_addr_sun.sun_len = FUNC0(&uc_cfg.serv_addr_sun);

	return (0);
}