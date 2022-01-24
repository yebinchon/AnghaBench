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
 int /*<<< orphan*/  DEV_IO ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(int asroot, int injail, struct test *test)
{
	int error, fd;

	fd = FUNC2(DEV_IO, O_RDONLY);
	if (fd < 0)
		error = -1;
	else
		error = 0;
	if (asroot && injail)
		FUNC1("priv_io(asroot, injail)", error, -1, EPERM);
	if (asroot && !injail)
		FUNC1("priv_io(asroot, !injail)", error, 0, 0);
	if (!asroot && injail)
		FUNC1("priv_io(!asroot, injail)", error, -1, EPERM);
	if (!asroot && !injail)
		FUNC1("priv_io(!asroot, !injail)", error, -1, EPERM);
	if (fd != -1)
		FUNC0(fd);
}