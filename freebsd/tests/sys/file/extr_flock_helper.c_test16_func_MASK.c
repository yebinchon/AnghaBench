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
struct test_ctx {int /*<<< orphan*/  tc_fl; int /*<<< orphan*/  tc_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLKW ; 
 uintptr_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void *
FUNC2(void *tc_in)
{
	uintptr_t error;
	struct test_ctx *tc = tc_in;

	error = FUNC0(tc->tc_fd, F_SETLKW, &tc->tc_fl);

	FUNC1((void *)error);
}