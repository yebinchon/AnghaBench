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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpath ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timeval*) ; 

void
FUNC2(int asroot, int injail, struct test *test)
{
	struct timeval tv[2];
	int error;

	tv[0].tv_sec = 0;
	tv[0].tv_usec = 0;
	tv[1].tv_sec = 0;
	tv[1].tv_usec = 0;
	error = FUNC1(fpath, tv);
	if (asroot && injail)
		FUNC0("priv_vfs_utimes_froot(root, jail)", error, 0, 0);
	if (asroot && !injail)
		FUNC0("priv_vfs_utimes_froot(root, !jail)", error, 0, 0);
	if (!asroot && injail)
		FUNC0("priv_vfs_utimes_froot(!root, jail)", error, -1,
		    EPERM);
	if (!asroot && !injail)
		FUNC0("priv_vfs_utimes_froot(!root, !jail)", error, -1,
		    EPERM);
}