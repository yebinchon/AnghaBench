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
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_BENEATH ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int AUDITVNODE1 ; 
 int BENEATH ; 
 int EINVAL ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOFOLLOW ; 
 int UTIMENS_EXIT ; 
 int UTIMENS_NULL ; 
 int /*<<< orphan*/  cap_futimes_rights ; 
 int FUNC2 (struct timespec*,int,struct timespec*,int*) ; 
 int FUNC3 (struct nameidata*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,struct timespec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, struct timespec *tptr, enum uio_seg tptrseg,
    int flag)
{
	struct nameidata nd;
	struct timespec ts[2];
	int error, flags;

	if ((flag & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
		return (EINVAL);

	if ((error = FUNC2(tptr, tptrseg, ts, &flags)) != 0)
		return (error);
	FUNC1(&nd, LOOKUP, ((flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW :
	    FOLLOW) |  ((flag & AT_BENEATH) != 0 ? BENEATH : 0) | AUDITVNODE1,
	    pathseg, path, fd, &cap_futimes_rights, td);
	if ((error = FUNC3(&nd)) != 0)
		return (error);
	/*
	 * We are allowed to call namei() regardless of 2xUTIME_OMIT.
	 * POSIX states:
	 * "If both tv_nsec fields are UTIME_OMIT... EACCESS may be detected."
	 * "Search permission is denied by a component of the path prefix."
	 */
	FUNC0(&nd, NDF_ONLY_PNBUF);
	if ((flags & UTIMENS_EXIT) == 0)
		error = FUNC4(td, nd.ni_vp, ts, 2, flags & UTIMENS_NULL);
	FUNC5(nd.ni_vp);
	return (error);
}