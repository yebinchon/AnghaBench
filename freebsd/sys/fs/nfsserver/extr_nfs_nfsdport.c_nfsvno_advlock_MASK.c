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
typedef  scalar_t__ u_int64_t ;
struct vnode {int dummy; } ;
struct thread {scalar_t__ td_proc; } ;
struct flock {int l_type; int l_sysid; scalar_t__ l_pid; void* l_len; void* l_start; int /*<<< orphan*/  l_whence; } ;
typedef  scalar_t__ pid_t ;
typedef  void* off_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int F_POSIX ; 
 int F_REMOTE ; 
 int F_SETLK ; 
 int F_UNLCK ; 
 scalar_t__ NFS64BITSSET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int,struct flock*,int) ; 
 scalar_t__ nfsrv_dolocallocks ; 
 scalar_t__ nfsv4_sysid ; 
 scalar_t__ FUNC3 () ; 

int
FUNC4(struct vnode *vp, int ftype, u_int64_t first,
    u_int64_t end, struct thread *td)
{
	int error = 0;
	struct flock fl;
	u_int64_t tlen;

	if (nfsrv_dolocallocks == 0)
		goto out;
	FUNC0(vp, "nfsvno_advlock: vp locked");

	fl.l_whence = SEEK_SET;
	fl.l_type = ftype;
	fl.l_start = (off_t)first;
	if (end == NFS64BITSSET) {
		fl.l_len = 0;
	} else {
		tlen = end - first;
		fl.l_len = (off_t)tlen;
	}
	/*
	 * For FreeBSD8, the l_pid and l_sysid must be set to the same
	 * values for all calls, so that all locks will be held by the
	 * nfsd server. (The nfsd server handles conflicts between the
	 * various clients.)
	 * Since an NFSv4 lockowner is a ClientID plus an array of up to 1024
	 * bytes, so it can't be put in l_sysid.
	 */
	if (nfsv4_sysid == 0)
		nfsv4_sysid = FUNC3();
	fl.l_pid = (pid_t)0;
	fl.l_sysid = (int)nfsv4_sysid;

	if (ftype == F_UNLCK)
		error = FUNC2(vp, (caddr_t)td->td_proc, F_UNLCK, &fl,
		    (F_POSIX | F_REMOTE));
	else
		error = FUNC2(vp, (caddr_t)td->td_proc, F_SETLK, &fl,
		    (F_POSIX | F_REMOTE));

out:
	FUNC1(error);
	return (error);
}