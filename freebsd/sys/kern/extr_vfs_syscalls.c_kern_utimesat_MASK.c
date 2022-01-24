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
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  cap_futimes_rights ; 
 int FUNC2 (struct timeval*,int,struct timespec*) ; 
 int FUNC3 (struct nameidata*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,struct timespec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, struct timeval *tptr, enum uio_seg tptrseg)
{
	struct nameidata nd;
	struct timespec ts[2];
	int error;

	if ((error = FUNC2(tptr, tptrseg, ts)) != 0)
		return (error);
	FUNC1(&nd, LOOKUP, FOLLOW | AUDITVNODE1, pathseg, path, fd,
	    &cap_futimes_rights, td);

	if ((error = FUNC3(&nd)) != 0)
		return (error);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	error = FUNC4(td, nd.ni_vp, ts, 2, tptr == NULL);
	FUNC5(nd.ni_vp);
	return (error);
}