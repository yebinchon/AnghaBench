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
struct socket {scalar_t__ so_type; } ;
struct icl_conn {struct socket* ic_socket; } ;
struct file {scalar_t__ f_type; struct socket* f_data; int /*<<< orphan*/ * f_ops; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SOCK_CLIENT ; 
 scalar_t__ DTYPE_SOCKET ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  badfileops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC7 (struct icl_conn*) ; 

int
FUNC8(struct icl_conn *ic, int fd)
{
	struct file *fp;
	struct socket *so;
	cap_rights_t rights;
	int error;

	FUNC1(ic);

#ifdef ICL_KERNEL_PROXY
	/*
	 * We're transitioning to Full Feature phase, and we don't
	 * really care.
	 */
	if (fd == 0) {
		ICL_CONN_LOCK(ic);
		if (ic->ic_socket == NULL) {
			ICL_CONN_UNLOCK(ic);
			ICL_WARN("proxy handoff without connect"); 
			return (EINVAL);
		}
		ICL_CONN_UNLOCK(ic);
		return (0);
	}
#endif

	/*
	 * Steal the socket from userland.
	 */
	error = FUNC6(curthread, fd,
	    FUNC4(&rights, CAP_SOCK_CLIENT), &fp);
	if (error != 0)
		return (error);
	if (fp->f_type != DTYPE_SOCKET) {
		FUNC5(fp, curthread);
		return (EINVAL);
	}
	so = fp->f_data;
	if (so->so_type != SOCK_STREAM) {
		FUNC5(fp, curthread);
		return (EINVAL);
	}

	FUNC0(ic);

	if (ic->ic_socket != NULL) {
		FUNC2(ic);
		FUNC5(fp, curthread);
		return (EBUSY);
	}

	ic->ic_socket = fp->f_data;
	fp->f_ops = &badfileops;
	fp->f_data = NULL;
	FUNC5(fp, curthread);
	FUNC2(ic);

	error = FUNC7(ic);

	return (error);
}