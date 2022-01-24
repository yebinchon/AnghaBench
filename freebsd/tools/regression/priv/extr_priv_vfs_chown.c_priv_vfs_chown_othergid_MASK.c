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
 int /*<<< orphan*/  GID_OTHER ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpath ; 

void
FUNC2(int asroot, int injail, struct test *test)
{
	int error;

	error = FUNC0(fpath, -1, GID_OTHER);
	if (asroot && injail)
		FUNC1("priv_vfs_chown_othergid(root, jail)", error, 0, 0);
	if (asroot && !injail)
		FUNC1("priv_vfs_chown_othergid(root, !jail)", error, 0, 0);
	if (!asroot && injail)
		FUNC1("priv_vfs_chown_othergid(!root, !jail)", error, -1,
		    EPERM);
	if (!asroot && !injail)
		FUNC1("priv_vfs_chown_othergid(!root, !jail)", error, -1,
		    EPERM);
}