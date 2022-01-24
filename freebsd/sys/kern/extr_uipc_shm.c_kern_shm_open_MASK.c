#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct thread {int* td_retval; TYPE_3__* td_ucred; TYPE_1__* td_proc; } ;
struct shmfd {int shm_seals; int /*<<< orphan*/  shm_mtx; int /*<<< orphan*/  shm_rl; int /*<<< orphan*/  shm_object; } ;
struct filedesc {int fd_cmask; } ;
struct filecaps {int dummy; } ;
struct file {int /*<<< orphan*/  f_cred; } ;
typedef  int mode_t ;
struct TYPE_10__ {TYPE_2__* cr_prison; } ;
struct TYPE_9__ {char* pr_path; } ;
struct TYPE_8__ {struct filedesc* p_fd; } ;
typedef  int /*<<< orphan*/  Fnv32_t ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  DTYPE_SHM ; 
 int ECAPMODE ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 int F_SEAL_SEAL ; 
 scalar_t__ FUNC4 (struct thread*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_NAMEI ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  M_SHMFD ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OFF_MAX ; 
 int O_ACCMODE ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 char const* SHM_ANON ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC9 (struct thread*,struct file**,int*,int,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct shmfd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (TYPE_3__*,char*) ; 
 int FUNC17 (TYPE_3__*,struct shmfd*,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,struct shmfd*) ; 
 char* FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 void* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct shmfd*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct shmfd* FUNC23 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  shm_dict_lock ; 
 int FUNC24 (struct shmfd*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC25 (struct shmfd*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,struct shmfd*) ; 
 struct shmfd* FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_ops ; 
 scalar_t__ FUNC28 (char const*,char*) ; 
 size_t FUNC29 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

int
FUNC32(struct thread *td, const char *userpath, int flags, mode_t mode,
    struct filecaps *fcaps, int initial_seals)
{
	struct filedesc *fdp;
	struct shmfd *shmfd;
	struct file *fp;
	char *path;
	const char *pr_path;
	void *rl_cookie;
	size_t pr_pathlen;
	Fnv32_t fnv;
	mode_t cmode;
	int fd, error;

#ifdef CAPABILITY_MODE
	/*
	 * shm_open(2) is only allowed for anonymous objects.
	 */
	if (IN_CAPABILITY_MODE(td) && (userpath != SHM_ANON))
		return (ECAPMODE);
#endif

	FUNC0(flags);
	FUNC1(mode);

	if ((flags & O_ACCMODE) != O_RDONLY && (flags & O_ACCMODE) != O_RDWR)
		return (EINVAL);

	if ((flags & ~(O_ACCMODE | O_CREAT | O_EXCL | O_TRUNC | O_CLOEXEC)) != 0)
		return (EINVAL);

	/*
	 * Currently only F_SEAL_SEAL may be set when creating or opening shmfd.
	 * If the decision is made later to allow additional seals, care must be
	 * taken below to ensure that the seals are properly set if the shmfd
	 * already existed -- this currently assumes that only F_SEAL_SEAL can
	 * be set and doesn't take further precautions to ensure the validity of
	 * the seals being added with respect to current mappings.
	 */
	if ((initial_seals & ~F_SEAL_SEAL) != 0)
		return (EINVAL);

	fdp = td->td_proc->p_fd;
	cmode = (mode & ~fdp->fd_cmask) & ACCESSPERMS;

	/*
	 * shm_open(2) created shm should always have O_CLOEXEC set, as mandated
	 * by POSIX.  We allow it to be unset here so that an in-kernel
	 * interface may be written as a thin layer around shm, optionally not
	 * setting CLOEXEC.  For shm_open(2), O_CLOEXEC is set unconditionally
	 * in sys_shm_open() to keep this implementation compliant.
	 */
	error = FUNC9(td, &fp, &fd, flags & O_CLOEXEC, fcaps);
	if (error)
		return (error);

	/* A SHM_ANON path pointer creates an anonymous object. */
	if (userpath == SHM_ANON) {
		/* A read-only anonymous object is pointless. */
		if ((flags & O_ACCMODE) == O_RDONLY) {
			FUNC10(td, fp, fd);
			FUNC11(fp, td);
			return (EINVAL);
		}
		shmfd = FUNC23(td->td_ucred, cmode);
		shmfd->shm_seals = initial_seals;
	} else {
		path = FUNC19(MAXPATHLEN, M_SHMFD, M_WAITOK);
		pr_path = td->td_ucred->cr_prison->pr_path;

		/* Construct a full pathname for jailed callers. */
		pr_pathlen = FUNC28(pr_path, "/") == 0 ? 0
		    : FUNC29(path, pr_path, MAXPATHLEN);
		error = FUNC8(userpath, path + pr_pathlen,
		    MAXPATHLEN - pr_pathlen, NULL);
#ifdef KTRACE
		if (error == 0 && KTRPOINT(curthread, KTR_NAMEI))
			ktrnamei(path);
#endif
		/* Require paths to start with a '/' character. */
		if (error == 0 && path[pr_pathlen] != '/')
			error = EINVAL;
		if (error) {
			FUNC10(td, fp, fd);
			FUNC11(fp, td);
			FUNC14(path, M_SHMFD);
			return (error);
		}

		FUNC2(path);
		fnv = FUNC13(path, FNV1_32_INIT);
		FUNC30(&shm_dict_lock);
		shmfd = FUNC27(path, fnv);
		if (shmfd == NULL) {
			/* Object does not yet exist, create it if requested. */
			if (flags & O_CREAT) {
#ifdef MAC
				error = mac_posixshm_check_create(td->td_ucred,
				    path);
				if (error == 0) {
#endif
					shmfd = FUNC23(td->td_ucred, cmode);
					shmfd->shm_seals = initial_seals;
					FUNC26(path, fnv, shmfd);
#ifdef MAC
				}
#endif
			} else {
				FUNC14(path, M_SHMFD);
				error = ENOENT;
			}
		} else {
			rl_cookie = FUNC21(&shmfd->shm_rl, 0, OFF_MAX,
			    &shmfd->shm_mtx);

			/*
			 * kern_shm_open() likely shouldn't ever error out on
			 * trying to set a seal that already exists, unlike
			 * F_ADD_SEALS.  This would break terribly as
			 * shm_open(2) actually sets F_SEAL_SEAL to maintain
			 * historical behavior where the underlying file could
			 * not be sealed.
			 */
			initial_seals &= ~shmfd->shm_seals;

			/*
			 * Object already exists, obtain a new
			 * reference if requested and permitted.
			 */
			FUNC14(path, M_SHMFD);

			/*
			 * initial_seals can't set additional seals if we've
			 * already been set F_SEAL_SEAL.  If F_SEAL_SEAL is set,
			 * then we've already removed that one from
			 * initial_seals.  This is currently redundant as we
			 * only allow setting F_SEAL_SEAL at creation time, but
			 * it's cheap to check and decreases the effort required
			 * to allow additional seals.
			 */
			if ((shmfd->shm_seals & F_SEAL_SEAL) != 0 &&
			    initial_seals != 0)
				error = EPERM;
			else if ((flags & (O_CREAT | O_EXCL)) ==
			    (O_CREAT | O_EXCL))
				error = EEXIST;
			else {
#ifdef MAC
				error = mac_posixshm_check_open(td->td_ucred,
				    shmfd, FFLAGS(flags & O_ACCMODE));
				if (error == 0)
#endif
				error = FUNC22(shmfd, td->td_ucred,
				    FUNC3(flags & O_ACCMODE));
			}

			/*
			 * Truncate the file back to zero length if
			 * O_TRUNC was specified and the object was
			 * opened with read/write.
			 */
			if (error == 0 &&
			    (flags & (O_ACCMODE | O_TRUNC)) ==
			    (O_RDWR | O_TRUNC)) {
				FUNC6(shmfd->shm_object);
#ifdef MAC
				error = mac_posixshm_check_truncate(
					td->td_ucred, fp->f_cred, shmfd);
				if (error == 0)
#endif
					error = FUNC24(shmfd, 0,
					    rl_cookie);
				FUNC7(shmfd->shm_object);
			}
			if (error == 0) {
				/*
				 * Currently we only allow F_SEAL_SEAL to be
				 * set initially.  As noted above, this would
				 * need to be reworked should that change.
				 */
				shmfd->shm_seals |= initial_seals;
				FUNC25(shmfd);
			}
			FUNC20(&shmfd->shm_rl, rl_cookie,
			    &shmfd->shm_mtx);
		}
		FUNC31(&shm_dict_lock);

		if (error) {
			FUNC10(td, fp, fd);
			FUNC11(fp, td);
			return (error);
		}
	}

	FUNC12(fp, FUNC3(flags & O_ACCMODE), DTYPE_SHM, shmfd, &shm_ops);

	td->td_retval[0] = fd;
	FUNC11(fp, td);

	return (0);
}