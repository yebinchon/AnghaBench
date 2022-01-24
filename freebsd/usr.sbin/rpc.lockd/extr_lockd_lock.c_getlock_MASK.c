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
struct svc_req {int /*<<< orphan*/  rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct file_lock {int dummy; } ;
struct TYPE_6__ {int n_len; scalar_t__ n_bytes; } ;
struct TYPE_7__ {int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  svid; TYPE_1__ fh; int /*<<< orphan*/  caller_name; int /*<<< orphan*/  oh; } ;
struct TYPE_8__ {scalar_t__ reclaim; int /*<<< orphan*/  block; int /*<<< orphan*/  state; TYPE_2__ alock; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_3__ nlm4_lockargs ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  enum nlm_stats { ____Placeholder_nlm_stats } nlm_stats ;
struct TYPE_9__ {scalar_t__ buf; } ;

/* Variables and functions */
 int const LOCK_V4 ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 struct file_lock* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct file_lock*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct file_lock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ grace_expired ; 
#define  nlm4_blocked 129 
 int nlm4_denied_grace_period ; 
 int nlm4_denied_nolocks ; 
#define  nlm4_granted 128 
 int nlm_denied_grace_period ; 
 int nlm_denied_nolocks ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

enum nlm_stats
FUNC10(nlm4_lockargs *lckarg, struct svc_req *rqstp, const int flags)
{
	struct file_lock *newfl;
	enum nlm_stats retval;

	FUNC2("Entering getlock...\n");

	if (grace_expired == 0 && lckarg->reclaim == 0)
		return (flags & LOCK_V4) ?
		    nlm4_denied_grace_period : nlm_denied_grace_period;

	/* allocate new file_lock for this request */
	newfl = FUNC0(&lckarg->alock.oh, &lckarg->cookie,
				   (struct sockaddr *)FUNC8(rqstp->rq_xprt)->buf, lckarg->alock.caller_name);
	if (newfl == NULL) {
		FUNC9(LOG_NOTICE, "lock allocate failed: %s", FUNC7(errno));
		/* failed */
		return (flags & LOCK_V4) ?
		    nlm4_denied_nolocks : nlm_denied_nolocks;
	}

	if (lckarg->alock.fh.n_len != sizeof(fhandle_t)) {
		FUNC2("received fhandle size %d, local size %d",
		    lckarg->alock.fh.n_len, (int)sizeof(fhandle_t));
	}

	FUNC4(newfl, (fhandle_t *)lckarg->alock.fh.n_bytes,
	    lckarg->exclusive, lckarg->alock.svid, lckarg->alock.l_offset,
	    lckarg->alock.l_len,
	    lckarg->state, 0, flags, lckarg->block);

	/*
	 * newfl is now fully constructed and deallocate_file_lock
	 * can now be used to delete it
	 */

	FUNC5();
	FUNC2("Pointer to new lock is %p\n",newfl);

	retval = FUNC3(newfl);

	FUNC2("Pointer to new lock is %p\n",newfl);
	FUNC6();

	switch (retval)
		{
		case nlm4_granted:
			/* case nlm_granted: is the same as nlm4_granted */
			/* do_mon(lckarg->alock.caller_name); */
			break;
		case nlm4_blocked:
			/* case nlm_blocked: is the same as nlm4_blocked */
			/* do_mon(lckarg->alock.caller_name); */
			break;
		default:
			FUNC1(newfl);
			break;
		}

	FUNC2("Exiting getlock...\n");

	return retval;
}