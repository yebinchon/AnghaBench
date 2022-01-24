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
struct test {int /*<<< orphan*/  (* t_test_func ) (int,int,struct test*) ;int /*<<< orphan*/  t_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_OWNER ; 
 int /*<<< orphan*/  UID_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,struct test*) ; 

__attribute__((used)) static void
FUNC4(struct test *test, int asroot, int injail)
{

	FUNC2(test->t_name);
	if (injail)
		FUNC0(test->t_name);
	if (!asroot)
		FUNC1(test->t_name, UID_OWNER, GID_OWNER);
	test->t_test_func(asroot, injail, test);
}