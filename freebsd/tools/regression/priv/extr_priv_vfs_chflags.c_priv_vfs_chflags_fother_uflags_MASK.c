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
typedef  int /*<<< orphan*/  u_long ;
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  UF_NODUMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpath ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(int asroot, int injail,
    struct test *test)
{
	u_long flags;
	int error;

	flags = FUNC2(fpath);
	flags |= UF_NODUMP;
	error = FUNC0(fpath, flags);
	if (asroot && injail)
		FUNC1("priv_vfs_chflags_fother_uflags(asroot, injail)",
		    error, 0, 0);
	if (asroot && !injail)
		FUNC1("priv_vfs_chflags_fother_uflags(asroot, !injail)",
		    error, 0, 0);
	if (!asroot && injail)
		FUNC1("priv_vfs_chflags_fother_uflags(!asroot, injail)",
		    error, -1, EPERM);
	if (!asroot && !injail)
		FUNC1("priv_vfs_chflags_fother_uflags(!asroot, !injail)",
		    error, -1, EPERM);
}