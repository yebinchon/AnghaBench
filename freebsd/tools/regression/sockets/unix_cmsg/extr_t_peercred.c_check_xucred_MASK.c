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
typedef  size_t u_long ;
struct xucred {size_t cr_version; scalar_t__ cr_uid; size_t cr_ngroups; scalar_t__* cr_groups; } ;
typedef  int socklen_t ;
struct TYPE_3__ {scalar_t__ euid; scalar_t__ egid; } ;
struct TYPE_4__ {TYPE_1__ proc_cred; } ;

/* Variables and functions */
 size_t XUCRED_VERSION ; 
 size_t XU_NGROUPS ; 
 TYPE_2__ uc_cfg ; 
 scalar_t__ FUNC0 (char*,scalar_t__*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(const struct xucred *xucred, socklen_t len)
{
	int rc;

	if (len != sizeof(*xucred)) {
		FUNC2("option value size %zu != %zu",
		    (size_t)len, sizeof(*xucred));
		return (-1);
	}

	FUNC1("xucred.cr_version %u", xucred->cr_version);
	FUNC1("xucred.cr_uid %lu", (u_long)xucred->cr_uid);
	FUNC1("xucred.cr_ngroups %d", xucred->cr_ngroups);

	rc = 0;

	if (xucred->cr_version != XUCRED_VERSION) {
		FUNC2("xucred.cr_version %u != %d",
		    xucred->cr_version, XUCRED_VERSION);
		rc = -1;
	}
	if (xucred->cr_uid != uc_cfg.proc_cred.euid) {
		FUNC2("xucred.cr_uid %lu != %lu (EUID)",
		    (u_long)xucred->cr_uid, (u_long)uc_cfg.proc_cred.euid);
		rc = -1;
	}
	if (xucred->cr_ngroups == 0) {
		FUNC2("xucred.cr_ngroups == 0");
		rc = -1;
	}
	if (xucred->cr_ngroups < 0) {
		FUNC2("xucred.cr_ngroups < 0");
		rc = -1;
	}
	if (xucred->cr_ngroups > XU_NGROUPS) {
		FUNC2("xucred.cr_ngroups %hu > %u (max)",
		    xucred->cr_ngroups, XU_NGROUPS);
		rc = -1;
	}
	if (xucred->cr_groups[0] != uc_cfg.proc_cred.egid) {
		FUNC2("xucred.cr_groups[0] %lu != %lu (EGID)",
		    (u_long)xucred->cr_groups[0], (u_long)uc_cfg.proc_cred.egid);
		rc = -1;
	}
	if (FUNC0("xucred.cr_groups", xucred->cr_groups,
	    "xucred.cr_ngroups", xucred->cr_ngroups, false) < 0)
		rc = -1;
	return (rc);
}