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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int*,int /*<<< orphan*/ ) ; 

void
FUNC3(int asroot, int injail, struct test *test)
{
	int error;

	error = FUNC2(&error, FUNC1());
	if (asroot && injail)
		FUNC0("priv_vm_munlock(asroot, injail)", error, -1, EPERM);
	if (asroot && !injail)
		FUNC0("priv_vm_munlock(asroot, !injail", error, 0, 0);
	if (!asroot && injail)
		FUNC0("priv_vm_munlock(!asroot, injail", error, -1, EPERM);
	if (!asroot && !injail)
		FUNC0("priv_vm_munlock(!asroot, !injail", error, -1, EPERM);
}