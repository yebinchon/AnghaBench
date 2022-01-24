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
typedef  long u_long ;
struct cmsghdr {int dummy; } ;
struct cmsgcred {scalar_t__ cmcred_pid; scalar_t__ cmcred_uid; scalar_t__ cmcred_euid; scalar_t__ cmcred_gid; long cmcred_ngroups; scalar_t__* cmcred_groups; } ;
struct TYPE_3__ {scalar_t__ uid; scalar_t__ euid; scalar_t__ gid; scalar_t__ egid; } ;
struct TYPE_4__ {scalar_t__ client_pid; TYPE_1__ proc_cred; } ;

/* Variables and functions */
 long CMGROUP_MAX ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 int /*<<< orphan*/  SCM_CREDS ; 
 TYPE_2__ uc_cfg ; 
 scalar_t__ FUNC1 (struct cmsghdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,scalar_t__*,char*,long,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int
FUNC5(struct cmsghdr *cmsghdr)
{
	const struct cmsgcred *cmcred;
	int rc;

	if (FUNC1(cmsghdr, SCM_CREDS, sizeof(struct cmsgcred)) < 0)
		return (-1);

	cmcred = (struct cmsgcred *)FUNC0(cmsghdr);

	FUNC3("cmsgcred.cmcred_pid %ld", (long)cmcred->cmcred_pid);
	FUNC3("cmsgcred.cmcred_uid %lu", (u_long)cmcred->cmcred_uid);
	FUNC3("cmsgcred.cmcred_euid %lu", (u_long)cmcred->cmcred_euid);
	FUNC3("cmsgcred.cmcred_gid %lu", (u_long)cmcred->cmcred_gid);
	FUNC3("cmsgcred.cmcred_ngroups %d", cmcred->cmcred_ngroups);

	rc = 0;

	if (cmcred->cmcred_pid != uc_cfg.client_pid) {
		FUNC4("cmsgcred.cmcred_pid %ld != %ld",
		    (long)cmcred->cmcred_pid, (long)uc_cfg.client_pid);
		rc = -1;
	}
	if (cmcred->cmcred_uid != uc_cfg.proc_cred.uid) {
		FUNC4("cmsgcred.cmcred_uid %lu != %lu",
		    (u_long)cmcred->cmcred_uid, (u_long)uc_cfg.proc_cred.uid);
		rc = -1;
	}
	if (cmcred->cmcred_euid != uc_cfg.proc_cred.euid) {
		FUNC4("cmsgcred.cmcred_euid %lu != %lu",
		    (u_long)cmcred->cmcred_euid, (u_long)uc_cfg.proc_cred.euid);
		rc = -1;
	}
	if (cmcred->cmcred_gid != uc_cfg.proc_cred.gid) {
		FUNC4("cmsgcred.cmcred_gid %lu != %lu",
		    (u_long)cmcred->cmcred_gid, (u_long)uc_cfg.proc_cred.gid);
		rc = -1;
	}
	if (cmcred->cmcred_ngroups == 0) {
		FUNC4("cmsgcred.cmcred_ngroups == 0");
		rc = -1;
	}
	if (cmcred->cmcred_ngroups < 0) {
		FUNC4("cmsgcred.cmcred_ngroups %d < 0",
		    cmcred->cmcred_ngroups);
		rc = -1;
	}
	if (cmcred->cmcred_ngroups > CMGROUP_MAX) {
		FUNC4("cmsgcred.cmcred_ngroups %d > %d",
		    cmcred->cmcred_ngroups, CMGROUP_MAX);
		rc = -1;
	}
	if (cmcred->cmcred_groups[0] != uc_cfg.proc_cred.egid) {
		FUNC4("cmsgcred.cmcred_groups[0] %lu != %lu (EGID)",
		    (u_long)cmcred->cmcred_groups[0], (u_long)uc_cfg.proc_cred.egid);
		rc = -1;
	}
	if (FUNC2("cmsgcred.cmcred_groups", cmcred->cmcred_groups,
	    "cmsgcred.cmcred_ngroups", cmcred->cmcred_ngroups, false) < 0)
		rc = -1;
	return (rc);
}