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
struct undelete_args {int /*<<< orphan*/  path; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int cn_flags; } ;
struct nameidata {scalar_t__ ni_vp; scalar_t__ ni_dvp; TYPE_1__ ni_cnd; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  DELETE ; 
 int DOWHITEOUT ; 
 int EEXIST ; 
 int ISWHITEOUT ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ NULLVP ; 
 int PCATCH ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int
FUNC9(struct thread *td, struct undelete_args *uap)
{
	struct mount *mp;
	struct nameidata nd;
	int error;

restart:
	FUNC3();
	FUNC1(&nd, DELETE, LOCKPARENT | DOWHITEOUT | AUDITVNODE1,
	    UIO_USERSPACE, uap->path, td);
	error = FUNC4(&nd);
	if (error != 0)
		return (error);

	if (nd.ni_vp != NULLVP || !(nd.ni_cnd.cn_flags & ISWHITEOUT)) {
		FUNC0(&nd, NDF_ONLY_PNBUF);
		if (nd.ni_vp == nd.ni_dvp)
			FUNC8(nd.ni_dvp);
		else
			FUNC7(nd.ni_dvp);
		if (nd.ni_vp)
			FUNC8(nd.ni_vp);
		return (EEXIST);
	}
	if (FUNC6(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
		FUNC0(&nd, NDF_ONLY_PNBUF);
		FUNC7(nd.ni_dvp);
		if ((error = FUNC6(NULL, &mp, V_XSLEEP | PCATCH)) != 0)
			return (error);
		goto restart;
	}
	error = FUNC2(nd.ni_dvp, &nd.ni_cnd, DELETE);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC7(nd.ni_dvp);
	FUNC5(mp);
	return (error);
}