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

/* Variables and functions */
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,struct thread*) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC3 (int /*<<< orphan*/ ,int,void*,size_t,struct thread*) ; 
 int FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, const char *path, int attrnamespace,
    void *data, size_t nbytes, int follow)
{
	struct nameidata nd;
	int error;

	FUNC0(attrnamespace);
	FUNC2(&nd, LOOKUP, follow | AUDITVNODE1, UIO_USERSPACE, path, td);
	error = FUNC4(&nd);
	if (error)
		return (error);
	FUNC1(&nd, NDF_ONLY_PNBUF);

	error = FUNC3(nd.ni_vp, attrnamespace, data, nbytes, td);

	FUNC5(nd.ni_vp);
	return (error);
}