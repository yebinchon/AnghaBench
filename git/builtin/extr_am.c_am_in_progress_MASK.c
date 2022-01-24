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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct am_state {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct am_state const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC4(const struct am_state *state)
{
	struct stat st;

	if (FUNC3(state->dir, &st) < 0 || !FUNC0(st.st_mode))
		return 0;
	if (FUNC3(FUNC2(state, "last"), &st) || !FUNC1(st.st_mode))
		return 0;
	if (FUNC3(FUNC2(state, "next"), &st) || !FUNC1(st.st_mode))
		return 0;
	return 1;
}