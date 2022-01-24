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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EXTATTR_MAXNAMELEN ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,struct thread*) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC4 (char const*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,char*,struct thread*) ; 
 int FUNC6 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, const char *path, int attrnamespace,
    const char *uattrname, int follow)
{
	struct nameidata nd;
	char attrname[EXTATTR_MAXNAMELEN];
	int error;

	FUNC1(attrnamespace);
	error = FUNC4(uattrname, attrname, EXTATTR_MAXNAMELEN, NULL);
	if (error)
		return(error);
	FUNC0(attrname);

	FUNC3(&nd, LOOKUP, follow | AUDITVNODE1, UIO_USERSPACE, path, td);
	error = FUNC6(&nd);
	if (error)
		return(error);
	FUNC2(&nd, NDF_ONLY_PNBUF);

	error = FUNC5(nd.ni_vp, attrnamespace, attrname, td);
	FUNC7(nd.ni_vp);
	return(error);
}