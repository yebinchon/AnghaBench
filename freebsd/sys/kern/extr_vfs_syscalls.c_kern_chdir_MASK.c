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
 int FOLLOW ; 
 int LOCKLEAF ; 
 int LOCKSHARED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct thread *td, const char *path, enum uio_seg pathseg)
{
	struct nameidata nd;
	int error;

	FUNC1(&nd, LOOKUP, FOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
	    pathseg, path, td);
	if ((error = FUNC4(&nd)) != 0)
		return (error);
	if ((error = FUNC3(nd.ni_vp, td)) != 0) {
		FUNC6(nd.ni_vp);
		FUNC0(&nd, NDF_ONLY_PNBUF);
		return (error);
	}
	FUNC2(nd.ni_vp, 0);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC5(td, nd.ni_vp);
	return (0);
}