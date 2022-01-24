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
typedef  int /*<<< orphan*/  semid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(semid_t id, int expected)
{
	int val;

	if (FUNC2(id, &val) < 0) {
		FUNC1("ksem_getvalue");
		return (-1);
	}
	if (val != expected) {
		FUNC0("sem value should be %d instead of %d", expected, val);
		return (-1);
	}
	return (0);
}