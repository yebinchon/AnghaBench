#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_3__* td_ucred; TYPE_1__* td_proc; } ;
struct ksem {int /*<<< orphan*/  ks_flags; } ;
struct filedesc {int fd_cmask; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  semid_t ;
typedef  int mode_t ;
struct TYPE_8__ {TYPE_2__* cr_prison; } ;
struct TYPE_7__ {char* pr_path; } ;
struct TYPE_6__ {struct filedesc* p_fd; } ;
typedef  int /*<<< orphan*/  Fnv32_t ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  DTYPE_SEM ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENFILE ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KS_ANONYMOUS ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  M_KSEM ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 unsigned int SEM_VALUE_MAX ; 
 int FUNC5 (char const*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct thread*,struct file**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct file*,int,int /*<<< orphan*/ ,struct ksem*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ksem*,TYPE_3__*) ; 
 struct ksem* FUNC13 (TYPE_3__*,int,unsigned int) ; 
 int FUNC14 (struct thread*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  ksem_dict_lock ; 
 int /*<<< orphan*/  FUNC15 (struct ksem*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,struct ksem*) ; 
 struct ksem* FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksem_ops ; 
 int FUNC18 (TYPE_3__*,struct ksem*) ; 
 char* FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char const*,char*) ; 
 size_t FUNC21 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC24(struct thread *td, const char *name, semid_t *semidp, mode_t mode,
    unsigned int value, int flags, int compat32)
{
	struct filedesc *fdp;
	struct ksem *ks;
	struct file *fp;
	char *path;
	const char *pr_path;
	size_t pr_pathlen;
	Fnv32_t fnv;
	int error, fd;

	FUNC0(flags);
	FUNC1(mode);
	FUNC3(value);

	if (value > SEM_VALUE_MAX)
		return (EINVAL);

	fdp = td->td_proc->p_fd;
	mode = (mode & ~fdp->fd_cmask) & ACCESSPERMS;
	error = FUNC6(td, &fp, &fd, O_CLOEXEC);
	if (error) {
		if (name == NULL)
			error = ENOSPC;
		return (error);
	}

	/*
	 * Go ahead and copyout the file descriptor now.  This is a bit
	 * premature, but it is a lot easier to handle errors as opposed
	 * to later when we've possibly created a new semaphore, etc.
	 */
	error = FUNC14(td, semidp, fd, compat32);
	if (error) {
		FUNC7(td, fp, fd);
		FUNC8(fp, td);
		return (error);
	}

	if (name == NULL) {
		/* Create an anonymous semaphore. */
		ks = FUNC13(td->td_ucred, mode, value);
		if (ks == NULL)
			error = ENOSPC;
		else
			ks->ks_flags |= KS_ANONYMOUS;
	} else {
		path = FUNC19(MAXPATHLEN, M_KSEM, M_WAITOK);
		pr_path = td->td_ucred->cr_prison->pr_path;

		/* Construct a full pathname for jailed callers. */
		pr_pathlen = FUNC20(pr_path, "/") == 0 ? 0
		    : FUNC21(path, pr_path, MAXPATHLEN);
		error = FUNC5(name, path + pr_pathlen,
		    MAXPATHLEN - pr_pathlen, NULL);

		/* Require paths to start with a '/' character. */
		if (error == 0 && path[pr_pathlen] != '/')
			error = EINVAL;
		if (error) {
			FUNC7(td, fp, fd);
			FUNC8(fp, td);
			FUNC11(path, M_KSEM);
			return (error);
		}

		FUNC2(path);
		fnv = FUNC10(path, FNV1_32_INIT);
		FUNC22(&ksem_dict_lock);
		ks = FUNC17(path, fnv);
		if (ks == NULL) {
			/* Object does not exist, create it if requested. */
			if (flags & O_CREAT) {
				ks = FUNC13(td->td_ucred, mode, value);
				if (ks == NULL)
					error = ENFILE;
				else {
					FUNC16(path, fnv, ks);
					path = NULL;
				}
			} else
				error = ENOENT;
		} else {
			/*
			 * Object already exists, obtain a new
			 * reference if requested and permitted.
			 */
			if ((flags & (O_CREAT | O_EXCL)) ==
			    (O_CREAT | O_EXCL))
				error = EEXIST;
			else {
#ifdef MAC
				error = mac_posixsem_check_open(td->td_ucred,
				    ks);
				if (error == 0)
#endif
				error = FUNC12(ks, td->td_ucred);
			}
			if (error == 0)
				FUNC15(ks);
#ifdef INVARIANTS
			else
				ks = NULL;
#endif
		}
		FUNC23(&ksem_dict_lock);
		if (path)
			FUNC11(path, M_KSEM);
	}

	if (error) {
		FUNC4(ks == NULL, ("ksem_create error with a ksem"));
		FUNC7(td, fp, fd);
		FUNC8(fp, td);
		return (error);
	}
	FUNC4(ks != NULL, ("ksem_create w/o a ksem"));

	FUNC9(fp, FREAD | FWRITE, DTYPE_SEM, ks, &ksem_ops);

	FUNC8(fp, td);

	return (0);
}