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
struct acl {int dummy; } ;
typedef  int /*<<< orphan*/  acl_type_t ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,struct thread*) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC2 (struct nameidata*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acl*) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, const char *path, acl_type_t type,
    struct acl *aclp, int follow)
{
	struct nameidata nd;
	int error;

	FUNC1(&nd, LOOKUP, follow | AUDITVNODE1, UIO_USERSPACE, path, td);
	error = FUNC2(&nd);
	if (error == 0) {
		error = FUNC3(td, nd.ni_vp, type, aclp);
		FUNC0(&nd, 0);
	}
	return (error);
}