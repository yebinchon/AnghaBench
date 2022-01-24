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
typedef  scalar_t__ fflags_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void
FUNC2(fflags_t value)
{
	bool invalid;
	fflags_t rem;

	if (value == 0) {
		FUNC0("0");
		return;
	}
	FUNC0("%#x<", value);
	invalid = !FUNC1(stdout, value, &rem);
	FUNC0(">");
	if (invalid)
		FUNC0("<invalid>%u", rem);
}