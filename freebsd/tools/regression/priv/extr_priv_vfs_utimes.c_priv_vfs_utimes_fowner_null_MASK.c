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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpath ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(int asroot, int injail, struct test *test)
{
	int error;

	error = FUNC1(fpath, NULL);
	if (asroot && injail)
		FUNC0("priv_vfs_utimes_fowner_null(root, jail)", error, 0,
		    0);
	if (asroot && !injail)
		FUNC0("priv_vfs_utimes_fowner_null(root, !jail)", error, 0,
		    0);
	if (!asroot && injail)
		FUNC0("priv_vfs_utimes_fowner_null(!root, jail)", error, 0,
		    0);
	if (!asroot && !injail)
		FUNC0("priv_vfs_utimes_fowner_null(!root, !jail)", error, 0,
		    0);
}