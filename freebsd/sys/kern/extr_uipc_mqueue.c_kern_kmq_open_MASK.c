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
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; TYPE_1__* td_proc; } ;
struct mqueue {int dummy; } ;
struct mqfs_node {int /*<<< orphan*/  mn_gid; int /*<<< orphan*/  mn_uid; int /*<<< orphan*/  mn_mode; struct mqueue* mn_data; } ;
struct mq_attr {scalar_t__ mq_maxmsg; scalar_t__ mq_msgsize; } ;
struct filedesc {int fd_cmask; } ;
struct file {int dummy; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  accmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  mi_lock; int /*<<< orphan*/  mi_root; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int ALLPERMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  DTYPE_MQUEUE ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENFILE ; 
 int ENOENT ; 
 int ENOSPC ; 
 int FREAD ; 
 int FWRITE ; 
 int MQFS_NAMELEN ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NONBLOCK ; 
 int S_ISTXT ; 
 int /*<<< orphan*/  VREAD ; 
 int /*<<< orphan*/  VREG ; 
 int /*<<< orphan*/  VWRITE ; 
 int FUNC3 (char const*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct thread*,struct file**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int,int /*<<< orphan*/ ,struct mqfs_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ maxmsg ; 
 scalar_t__ maxmsgsize ; 
 struct mqfs_node* FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ mqfs_data ; 
 struct mqfs_node* FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mqfs_node*) ; 
 struct mqueue* FUNC11 (struct mq_attr const*) ; 
 int /*<<< orphan*/  FUNC12 (struct mqueue*) ; 
 int /*<<< orphan*/  mqueueops ; 
 int /*<<< orphan*/ * FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct thread *td, const char *upath, int flags, mode_t mode,
    const struct mq_attr *attr)
{
	char path[MQFS_NAMELEN + 1];
	struct mqfs_node *pn;
	struct filedesc *fdp;
	struct file *fp;
	struct mqueue *mq;
	int fd, error, len, cmode;

	FUNC0(flags);
	FUNC1(mode);

	fdp = td->td_proc->p_fd;
	cmode = (((mode & ~fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT);
	mq = NULL;
	if ((flags & O_CREAT) != 0 && attr != NULL) {
		if (attr->mq_maxmsg <= 0 || attr->mq_maxmsg > maxmsg)
			return (EINVAL);
		if (attr->mq_msgsize <= 0 || attr->mq_msgsize > maxmsgsize)
			return (EINVAL);
	}

	error = FUNC3(upath, path, MQFS_NAMELEN + 1, NULL);
        if (error)
		return (error);

	/*
	 * The first character of name must be a slash  (/) character
	 * and the remaining characters of name cannot include any slash
	 * characters. 
	 */
	len = FUNC15(path);
	if (len < 2 || path[0] != '/' || FUNC13(path + 1, '/') != NULL)
		return (EINVAL);
	/*
	 * "." and ".." are magic directories, populated on the fly, and cannot
	 * be opened as queues.
	 */
	if (FUNC14(path, "/.") == 0 || FUNC14(path, "/..") == 0)
		return (EINVAL);
	FUNC2(path);

	error = FUNC4(td, &fp, &fd, O_CLOEXEC);
	if (error)
		return (error);

	FUNC16(&mqfs_data.mi_lock);
	pn = FUNC9(mqfs_data.mi_root, path + 1, len - 1, td->td_ucred);
	if (pn == NULL) {
		if (!(flags & O_CREAT)) {
			error = ENOENT;
		} else {
			mq = FUNC11(attr);
			if (mq == NULL) {
				error = ENFILE;
			} else {
				pn = FUNC8(mqfs_data.mi_root,
				         path + 1, len - 1, td->td_ucred,
					 cmode);
				if (pn == NULL) {
					error = ENOSPC;
					FUNC12(mq);
				}
			}
		}

		if (error == 0) {
			pn->mn_data = mq;
		}
	} else {
		if ((flags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL)) {
			error = EEXIST;
		} else {
			accmode_t accmode = 0;

			if (flags & FREAD)
				accmode |= VREAD;
			if (flags & FWRITE)
				accmode |= VWRITE;
			error = FUNC18(VREG, pn->mn_mode, pn->mn_uid,
				    pn->mn_gid, accmode, td->td_ucred, NULL);
		}
	}

	if (error) {
		FUNC17(&mqfs_data.mi_lock);
		FUNC5(td, fp, fd);
		FUNC6(fp, td);
		return (error);
	}

	FUNC10(pn);
	FUNC17(&mqfs_data.mi_lock);

	FUNC7(fp, flags & (FREAD | FWRITE | O_NONBLOCK), DTYPE_MQUEUE, pn,
	    &mqueueops);

	td->td_retval[0] = fd;
	FUNC6(fp, td);
	return (0);
}