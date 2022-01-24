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
struct am_state {int /*<<< orphan*/  msg_len; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 char* FUNC0 (struct am_state const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct am_state *state)
{
	const char *filename = FUNC0(state, "final-commit");
	FUNC1(filename, state->msg, state->msg_len);
}