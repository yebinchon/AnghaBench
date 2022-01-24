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
struct vnode {int dummy; } ;
struct thread {size_t* td_retval; } ;
struct file {size_t f_offset; int f_flag; int /*<<< orphan*/  f_cred; struct vnode* f_vnode; } ;
typedef  size_t off_t ;

/* Variables and functions */
 int EBADF ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int FAPPEND ; 
 int FREAD ; 
 int FWRITE ; 
 size_t SSIZE_MAX ; 
 int /*<<< orphan*/  cap_read_rights ; 
 int /*<<< orphan*/  cap_write_rights ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct thread*) ; 
 int FUNC1 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC3 (struct vnode*,size_t*,struct vnode*,size_t*,size_t*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 void* FUNC4 (struct vnode*,size_t,size_t) ; 
 void* FUNC5 (struct vnode*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,void*) ; 
 void* FUNC7 (struct vnode*,size_t,size_t) ; 

int
FUNC8(struct thread *td, int infd, off_t *inoffp, int outfd,
    off_t *outoffp, size_t len, unsigned int flags)
{
	struct file *infp, *outfp;
	struct vnode *invp, *outvp;
	int error;
	size_t retlen;
	void *rl_rcookie, *rl_wcookie;
	off_t savinoff, savoutoff;

	infp = outfp = NULL;
	rl_rcookie = rl_wcookie = NULL;
	savinoff = -1;
	error = 0;
	retlen = 0;

	if (flags != 0) {
		error = EINVAL;
		goto out;
	}
	if (len > SSIZE_MAX)
		/*
		 * Although the len argument is size_t, the return argument
		 * is ssize_t (which is signed).  Therefore a size that won't
		 * fit in ssize_t can't be returned.
		 */
		len = SSIZE_MAX;

	/* Get the file structures for the file descriptors. */
	error = FUNC1(td, infd, &cap_read_rights, &infp);
	if (error != 0)
		goto out;
	error = FUNC2(td, outfd, &cap_write_rights, &outfp);
	if (error != 0)
		goto out;

	/* Set the offset pointers to the correct place. */
	if (inoffp == NULL)
		inoffp = &infp->f_offset;
	if (outoffp == NULL)
		outoffp = &outfp->f_offset;
	savinoff = *inoffp;
	savoutoff = *outoffp;

	invp = infp->f_vnode;
	outvp = outfp->f_vnode;
	/* Sanity check the f_flag bits. */
	if ((outfp->f_flag & (FWRITE | FAPPEND)) != FWRITE ||
	    (infp->f_flag & FREAD) == 0) {
		error = EBADF;
		goto out;
	}

	/* If len == 0, just return 0. */
	if (len == 0)
		goto out;

	/*
	 * If infp and outfp refer to the same file, the byte ranges cannot
	 * overlap.
	 */
	if (invp == outvp && ((savinoff <= savoutoff && savinoff + len >
	    savoutoff) || (savinoff > savoutoff && savoutoff + len >
	    savinoff))) {
		error = EINVAL;
		goto out;
	}

	/* Range lock the byte ranges for both invp and outvp. */
	for (;;) {
		rl_wcookie = FUNC7(outvp, *outoffp, *outoffp +
		    len);
		rl_rcookie = FUNC5(invp, *inoffp, *inoffp +
		    len);
		if (rl_rcookie != NULL)
			break;
		FUNC6(outvp, rl_wcookie);
		rl_rcookie = FUNC4(invp, *inoffp, *inoffp + len);
		FUNC6(invp, rl_rcookie);
	}

	retlen = len;
	error = FUNC3(invp, inoffp, outvp, outoffp, &retlen,
	    flags, infp->f_cred, outfp->f_cred, td);
out:
	if (rl_rcookie != NULL)
		FUNC6(invp, rl_rcookie);
	if (rl_wcookie != NULL)
		FUNC6(outvp, rl_wcookie);
	if (savinoff != -1 && (error == EINTR || error == ERESTART)) {
		*inoffp = savinoff;
		*outoffp = savoutoff;
	}
	if (outfp != NULL)
		FUNC0(outfp, td);
	if (infp != NULL)
		FUNC0(infp, td);
	td->td_retval[0] = retlen;
	return (error);
}