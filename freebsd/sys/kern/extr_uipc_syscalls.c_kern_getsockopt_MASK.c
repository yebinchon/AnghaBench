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
struct thread {int dummy; } ;
struct sockopt {int sopt_level; int sopt_name; size_t sopt_valsize; struct thread* sopt_td; void* sopt_val; int /*<<< orphan*/  sopt_dir; } ;
struct socket {int dummy; } ;
struct file {struct socket* f_data; } ;
typedef  size_t socklen_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SOPT_GET ; 
#define  UIO_SYSSPACE 129 
#define  UIO_USERSPACE 128 
 int /*<<< orphan*/  cap_getsockopt_rights ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct socket*,struct sockopt*) ; 

int
FUNC5(struct thread *td, int s, int level, int name, void *val,
    enum uio_seg valseg, socklen_t *valsize)
{
	struct socket *so;
	struct file *fp;
	struct sockopt sopt;
	int error;

	if (val == NULL)
		*valsize = 0;
	if ((int)*valsize < 0)
		return (EINVAL);

	sopt.sopt_dir = SOPT_GET;
	sopt.sopt_level = level;
	sopt.sopt_name = name;
	sopt.sopt_val = val;
	sopt.sopt_valsize = (size_t)*valsize; /* checked non-negative above */
	switch (valseg) {
	case UIO_USERSPACE:
		sopt.sopt_td = td;
		break;
	case UIO_SYSSPACE:
		sopt.sopt_td = NULL;
		break;
	default:
		FUNC3("kern_getsockopt called with bad valseg");
	}

	FUNC0(s);
	error = FUNC2(td, s, &cap_getsockopt_rights,
	    &fp, NULL, NULL);
	if (error == 0) {
		so = fp->f_data;
		error = FUNC4(so, &sopt);
		*valsize = sopt.sopt_valsize;
		FUNC1(fp, td);
	}
	return (error);
}