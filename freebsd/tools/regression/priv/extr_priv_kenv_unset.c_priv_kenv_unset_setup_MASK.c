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
 int /*<<< orphan*/  KENV_SET ; 
 int /*<<< orphan*/  KENV_VAR_LEN ; 
 int /*<<< orphan*/  KENV_VAR_NAME ; 
 int /*<<< orphan*/  KENV_VAR_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(int asroot, int injail, struct test *test)
{

	if (FUNC0(KENV_SET, KENV_VAR_NAME, KENV_VAR_VALUE, KENV_VAR_LEN) < 0) {
		FUNC1("priv_kenv_unset: kenv");
		return (-1);
	}
	return (0);
}