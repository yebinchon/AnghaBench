#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vs ;
struct TYPE_6__ {int /*<<< orphan*/  stat; } ;
struct vfs_state {TYPE_2__ stat; int /*<<< orphan*/  vs_vp; int /*<<< orphan*/  cookie; } ;
struct svc_req {int /*<<< orphan*/  rq_vers; } ;
struct nlm_host {int nh_sysid; int /*<<< orphan*/  nh_caller_name; } ;
struct flock {int l_sysid; int /*<<< orphan*/  l_type; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_pid; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; } ;
struct TYPE_5__ {int /*<<< orphan*/  svid; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  fh; int /*<<< orphan*/  caller_name; } ;
struct TYPE_7__ {TYPE_1__ alock; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_3__ nlm4_unlockargs ;
typedef  struct vfs_state nlm4_res ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  accmode_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  F_REMOTE ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nlm4_denied_grace_period ; 
 int /*<<< orphan*/  nlm4_denied_nolocks ; 
 int /*<<< orphan*/  nlm4_granted ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nlm_host* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nlm_host*,struct svc_req*,int /*<<< orphan*/ *,struct vfs_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ nlm_grace_threshold ; 
 int /*<<< orphan*/ * FUNC9 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct vfs_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_req*) ; 
 scalar_t__ time_uptime ; 

int
FUNC13(nlm4_unlockargs *argp, nlm4_res *result, struct svc_req *rqstp,
    CLIENT **rpcp)
{
	fhandle_t fh;
	struct vfs_state vs;
	struct nlm_host *host;
	int error, sysid;
	struct flock fl;
	
	FUNC2(result, 0, sizeof(*result));
	FUNC2(&vs, 0, sizeof(vs));

	host = FUNC7(argp->alock.caller_name,
	    FUNC12(rqstp), rqstp->rq_vers);
	if (!host) {
		result->stat.stat = nlm4_denied_nolocks;
		return (ENOMEM);
	}

	FUNC0(3, "nlm_do_unlock(): caller_name = %s (sysid = %d)\n",
	    host->nh_caller_name, host->nh_sysid);

	FUNC3(host);
	sysid = host->nh_sysid;

	FUNC5(&fh, &argp->alock.fh);
	FUNC6(&result->cookie, &argp->cookie, M_RPC);

	if (time_uptime < nlm_grace_threshold) {
		result->stat.stat = nlm4_denied_grace_period;
		goto out;
	}

	error = FUNC8(host, rqstp, &fh, &vs, (accmode_t)0);
	if (error) {
		result->stat.stat = FUNC4(error);
		goto out;
	}

	fl.l_start = argp->alock.l_offset;
	fl.l_len = argp->alock.l_len;
	fl.l_pid = argp->alock.svid;
	fl.l_sysid = sysid;
	fl.l_whence = SEEK_SET;
	fl.l_type = F_UNLCK;
	error = FUNC1(vs.vs_vp, NULL, F_UNLCK, &fl, F_REMOTE);

	/*
	 * Ignore the error - there is no result code for failure,
	 * only for grace period.
	 */
	result->stat.stat = nlm4_granted;

out:
	FUNC11(&vs);
	if (rpcp)
		*rpcp = FUNC9(host, TRUE);
	FUNC10(host);
	return (0);
}