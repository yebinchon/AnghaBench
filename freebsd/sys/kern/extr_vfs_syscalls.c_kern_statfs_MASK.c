#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct nameidata {TYPE_1__* ni_vp; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {struct mount* v_mount; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int LOCKSHARED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,struct thread*) ; 
 int FUNC2 (struct thread*,struct mount*,struct statfs*) ; 
 int FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(struct thread *td, const char *path, enum uio_seg pathseg,
    struct statfs *buf)
{
	struct mount *mp;
	struct nameidata nd;
	int error;

	FUNC1(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
	    pathseg, path, td);
	error = FUNC3(&nd);
	if (error != 0)
		return (error);
	mp = nd.ni_vp->v_mount;
	FUNC4(mp);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC5(nd.ni_vp);
	return (FUNC2(td, mp, buf));
}