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
typedef  int u_long ;
struct thread {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int LOCKLEAF ; 
 int LOCKSHARED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,struct thread*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,long*) ; 
 int FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct thread *td, const char *path, enum uio_seg pathseg,
    int name, u_long flags, long *valuep)
{
	struct nameidata nd;
	int error;

	FUNC1(&nd, LOOKUP, LOCKSHARED | LOCKLEAF | AUDITVNODE1 | flags,
	    pathseg, path, td);
	if ((error = FUNC3(&nd)) != 0)
		return (error);
	FUNC0(&nd, NDF_ONLY_PNBUF);

	error = FUNC2(nd.ni_vp, name, valuep);
	FUNC4(nd.ni_vp);
	return (error);
}