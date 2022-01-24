#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vs ;
struct TYPE_8__ {int exclusive; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  svid; } ;
struct TYPE_9__ {TYPE_2__ holder; } ;
struct TYPE_10__ {TYPE_3__ nlm4_testrply_u; int /*<<< orphan*/  stat; } ;
struct vfs_state {TYPE_4__ stat; int /*<<< orphan*/  vs_vp; int /*<<< orphan*/  cookie; } ;
struct svc_req {int /*<<< orphan*/  rq_vers; } ;
struct nlm_host {int nh_sysid; int /*<<< orphan*/  nh_caller_name; } ;
struct flock {int l_sysid; scalar_t__ l_type; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; int /*<<< orphan*/  l_pid; int /*<<< orphan*/  l_whence; } ;
typedef  struct vfs_state nlm4_testres ;
struct TYPE_7__ {int /*<<< orphan*/  svid; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  fh; int /*<<< orphan*/  caller_name; } ;
struct TYPE_11__ {scalar_t__ exclusive; TYPE_1__ alock; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_5__ nlm4_testargs ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  accmode_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  F_GETLK ; 
 scalar_t__ F_RDLCK ; 
 int /*<<< orphan*/  F_REMOTE ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VREAD ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nlm4_denied ; 
 int /*<<< orphan*/  nlm4_denied_grace_period ; 
 int /*<<< orphan*/  nlm4_denied_nolocks ; 
 int /*<<< orphan*/  nlm4_failed ; 
 int /*<<< orphan*/  nlm4_granted ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nlm_host* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlm_host* FUNC8 (int) ; 
 int FUNC9 (struct nlm_host*,struct svc_req*,int /*<<< orphan*/ *,struct vfs_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ nlm_grace_threshold ; 
 int /*<<< orphan*/ * FUNC10 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct vfs_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_req*) ; 
 scalar_t__ time_uptime ; 

int
FUNC14(nlm4_testargs *argp, nlm4_testres *result, struct svc_req *rqstp,
	CLIENT **rpcp)
{
	fhandle_t fh;
	struct vfs_state vs;
	struct nlm_host *host, *bhost;
	int error, sysid;
	struct flock fl;
	accmode_t accmode;
	
	FUNC2(result, 0, sizeof(*result));
	FUNC2(&vs, 0, sizeof(vs));

	host = FUNC7(argp->alock.caller_name,
	    FUNC13(rqstp), rqstp->rq_vers);
	if (!host) {
		result->stat.stat = nlm4_denied_nolocks;
		return (ENOMEM);
	}

	FUNC0(3, "nlm_do_test(): caller_name = %s (sysid = %d)\n",
	    host->nh_caller_name, host->nh_sysid);

	FUNC3(host);
	sysid = host->nh_sysid;

	FUNC5(&fh, &argp->alock.fh);
	FUNC6(&result->cookie, &argp->cookie, M_RPC);

	if (time_uptime < nlm_grace_threshold) {
		result->stat.stat = nlm4_denied_grace_period;
		goto out;
	}

	accmode = argp->exclusive ? VWRITE : VREAD;
	error = FUNC9(host, rqstp, &fh, &vs, accmode);
	if (error) {
		result->stat.stat = FUNC4(error);
		goto out;
	}

	fl.l_start = argp->alock.l_offset;
	fl.l_len = argp->alock.l_len;
	fl.l_pid = argp->alock.svid;
	fl.l_sysid = sysid;
	fl.l_whence = SEEK_SET;
	if (argp->exclusive)
		fl.l_type = F_WRLCK;
	else
		fl.l_type = F_RDLCK;
	error = FUNC1(vs.vs_vp, NULL, F_GETLK, &fl, F_REMOTE);
	if (error) {
		result->stat.stat = nlm4_failed;
		goto out;
	}

	if (fl.l_type == F_UNLCK) {
		result->stat.stat = nlm4_granted;
	} else {
		result->stat.stat = nlm4_denied;
		result->stat.nlm4_testrply_u.holder.exclusive =
			(fl.l_type == F_WRLCK);
		result->stat.nlm4_testrply_u.holder.svid = fl.l_pid;
		bhost = FUNC8(fl.l_sysid);
		if (bhost) {
			/*
			 * We don't have any useful way of recording
			 * the value of oh used in the original lock
			 * request. Ideally, the test reply would have
			 * a space for the owning host's name allowing
			 * our caller's NLM to keep track.
			 *
			 * As far as I can see, Solaris uses an eight
			 * byte structure for oh which contains a four
			 * byte pid encoded in local byte order and
			 * the first four bytes of the host
			 * name. Linux uses a variable length string
			 * 'pid@hostname' in ascii but doesn't even
			 * return that in test replies.
			 *
			 * For the moment, return nothing in oh
			 * (already zero'ed above).
			 */
			FUNC11(bhost);
		}
		result->stat.nlm4_testrply_u.holder.l_offset = fl.l_start;
		result->stat.nlm4_testrply_u.holder.l_len = fl.l_len;
	}

out:
	FUNC12(&vs);
	if (rpcp)
		*rpcp = FUNC10(host, TRUE);
	FUNC11(host);
	return (0);
}