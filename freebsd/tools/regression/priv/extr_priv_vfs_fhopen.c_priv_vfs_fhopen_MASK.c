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
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fh ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(int asroot, int injail, struct test *test)
{
	int errno_saved, error, fd;

	fd = FUNC2(&fh, O_RDONLY);
	if (fd >= 0) {
		error = 0;
		errno_saved = errno;
		FUNC0(fd);
		errno = errno_saved;
	} else
		error = -1;
	if (asroot && injail)
		FUNC1("priv_vfs_fhopen(asroot, injail)", error, -1, EPERM);
	if (asroot && !injail)
		FUNC1("priv_vfs_fhopen(asroot, !injail)", error, 0, 0);
	if (!asroot && injail)
		FUNC1("priv_vfs_fhopen(!asroot, injail)", error, -1, EPERM);
	if (!asroot && !injail)
		FUNC1("priv_vfs_fhopen(!asroot, !injail)", error, -1, EPERM);
}