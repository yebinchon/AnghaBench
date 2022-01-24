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
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpath ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(int asroot, int injail, struct test *test)
{
	fhandle_t fh;
	int error;

	error = FUNC1(fpath, &fh);
	if (asroot && injail)
		FUNC0("priv_vfs_getfh(asroot, injail)", error, -1, EPERM);
	if (asroot && !injail)
		FUNC0("priv_vfs_getfh(asroot, !injail)", error, 0, 0);
	if (!asroot && injail)
		FUNC0("priv_vfs_getfh(!asroot, injail)", error, -1, EPERM);
	if (!asroot && !injail)
		FUNC0("priv_vfs_getfh(!asroot, !injail)", error, -1, EPERM);
}