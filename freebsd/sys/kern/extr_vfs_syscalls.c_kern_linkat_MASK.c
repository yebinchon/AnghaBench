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
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int EAGAIN ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cap_linkat_source_rights ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int,char const*,int) ; 
 int FUNC4 (struct nameidata*) ; 

int
FUNC5(struct thread *td, int fd1, int fd2, const char *path1,
    const char *path2, enum uio_seg segflag, int follow)
{
	struct nameidata nd;
	int error;

	do {
		FUNC2();
		FUNC1(&nd, LOOKUP, follow | AUDITVNODE1, segflag,
		    path1, fd1, &cap_linkat_source_rights, td);
		if ((error = FUNC4(&nd)) != 0)
			return (error);
		FUNC0(&nd, NDF_ONLY_PNBUF);
		error = FUNC3(td, nd.ni_vp, fd2, path2, segflag);
	} while (error ==  EAGAIN);
	return (error);
}