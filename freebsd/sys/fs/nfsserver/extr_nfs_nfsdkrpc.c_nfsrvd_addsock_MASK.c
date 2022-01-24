#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int64_t ;
struct socket {scalar_t__ so_type; } ;
struct file {struct socket* f_data; int /*<<< orphan*/ * f_ops; } ;
struct TYPE_7__ {scalar_t__ xp_sockref; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NFS_PROG ; 
 scalar_t__ NFS_VER2 ; 
 scalar_t__ NFS_VER3 ; 
 scalar_t__ NFS_VER4 ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  badfileops ; 
 scalar_t__ nfs_maxvers ; 
 scalar_t__ nfs_minvers ; 
 int /*<<< orphan*/  nfsrvd_pool ; 
 int /*<<< orphan*/  nfssvc_loss ; 
 int /*<<< orphan*/  nfssvc_program ; 
 int sb_max_adj ; 
 int FUNC2 (struct socket*,int,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct file *fp)
{
	int siz;
	struct socket *so;
	int error = 0;
	SVCXPRT *xprt;
	static u_int64_t sockref = 0;

	so = fp->f_data;

	siz = sb_max_adj;
	error = FUNC2(so, siz, siz);
	if (error)
		goto out;

	/*
	 * Steal the socket from userland so that it doesn't close
	 * unexpectedly.
	 */
	if (so->so_type == SOCK_DGRAM)
		xprt = FUNC3(nfsrvd_pool, so, 0, 0);
	else
		xprt = FUNC6(nfsrvd_pool, so, 0, 0);
	if (xprt) {
		fp->f_ops = &badfileops;
		fp->f_data = NULL;
		xprt->xp_sockref = ++sockref;
		if (nfs_minvers == NFS_VER2)
			FUNC5(xprt, NFS_PROG, NFS_VER2, nfssvc_program,
			    NULL);
		if (nfs_minvers <= NFS_VER3 && nfs_maxvers >= NFS_VER3)
			FUNC5(xprt, NFS_PROG, NFS_VER3, nfssvc_program,
			    NULL);
		if (nfs_maxvers >= NFS_VER4)
			FUNC5(xprt, NFS_PROG, NFS_VER4, nfssvc_program,
			    NULL);
		if (so->so_type == SOCK_STREAM)
			FUNC4(xprt, nfssvc_loss);
		FUNC1(xprt);
	}

out:
	FUNC0(error);
	return (error);
}