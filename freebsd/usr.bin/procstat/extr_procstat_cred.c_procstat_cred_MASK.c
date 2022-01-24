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
struct procstat {int dummy; } ;
struct kinfo_proc {int ki_cr_flags; unsigned int ki_ngroups; int /*<<< orphan*/ * ki_groups; int /*<<< orphan*/  ki_svgid; int /*<<< orphan*/  ki_rgid; int /*<<< orphan*/  ki_svuid; int /*<<< orphan*/  ki_ruid; int /*<<< orphan*/  ki_uid; int /*<<< orphan*/  ki_comm; int /*<<< orphan*/  ki_pid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int CRED_FLAG_CAPMODE ; 
 int KI_CRF_GRP_OVERFLOW ; 
 int PS_OPT_NOHEADER ; 
 int /*<<< orphan*/  FUNC0 (struct procstat*,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct procstat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct procstat*,struct kinfo_proc*,unsigned int*) ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(struct procstat *procstat, struct kinfo_proc *kipp)
{
	unsigned int i, ngroups;
	gid_t *groups;

	if ((procstat_opts & PS_OPT_NOHEADER) == 0)
		FUNC4("{T:/%5s %-16s %5s %5s %5s %5s %5s %5s %5s %5s %-15s}\n",
		    "PID", "COMM", "EUID", "RUID", "SVUID", "EGID", "RGID",
		    "SVGID", "UMASK", "FLAGS", "GROUPS");

	FUNC4("{k:process_id/%5d/%d} ", kipp->ki_pid);
	FUNC4("{:command/%-16s/%s} ", kipp->ki_comm);
	FUNC4("{:uid/%5d} ", kipp->ki_uid);
	FUNC4("{:ruid/%5d} ", kipp->ki_ruid);
	FUNC4("{:svuid/%5d} ", kipp->ki_svuid);
	FUNC4("{:group/%5d} ", kipp->ki_groups[0]);
	FUNC4("{:rgid/%5d} ", kipp->ki_rgid);
	FUNC4("{:svgid/%5d} ", kipp->ki_svgid);
	FUNC4("{:umask/%5s} ", FUNC0(procstat, kipp));
	FUNC4("{:cr_flags/%s}", kipp->ki_cr_flags & CRED_FLAG_CAPMODE ?
	    "C" : "-");
	FUNC4("{P:     }");

	groups = NULL;
	/*
	 * We may have too many groups to fit in kinfo_proc's statically
	 * sized storage.  If that occurs, attempt to retrieve them using
	 * libprocstat.
	 */
	if (kipp->ki_cr_flags & KI_CRF_GRP_OVERFLOW)
		groups = FUNC2(procstat, kipp, &ngroups);
	if (groups == NULL) {
		ngroups = kipp->ki_ngroups;
		groups = kipp->ki_groups;
	}
	FUNC5("groups");
	for (i = 0; i < ngroups; i++)
		FUNC4("{D:/%s}{l:groups/%d}", (i > 0) ? "," : "", groups[i]);
	if (groups != kipp->ki_groups)
		FUNC1(procstat, groups);

	FUNC3("groups");
	FUNC4("\n");
}