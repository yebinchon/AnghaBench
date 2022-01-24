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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_BENEATH ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int BENEATH ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  cap_fchown_rights ; 
 int FUNC3 (struct nameidata*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, int uid, int gid, int flag)
{
	struct nameidata nd;
	int error, follow;

	FUNC0(uid, gid);
	follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
	follow |= (flag & AT_BENEATH) != 0 ? BENEATH : 0;
	FUNC2(&nd, LOOKUP, follow | AUDITVNODE1, pathseg, path, fd,
	    &cap_fchown_rights, td);

	if ((error = FUNC3(&nd)) != 0)
		return (error);
	FUNC1(&nd, NDF_ONLY_PNBUF);
	error = FUNC4(td, td->td_ucred, nd.ni_vp, uid, gid);
	FUNC5(nd.ni_vp);
	return (error);
}