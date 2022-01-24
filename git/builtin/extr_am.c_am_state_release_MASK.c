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
struct am_state {int /*<<< orphan*/  git_apply_opts; int /*<<< orphan*/  msg; int /*<<< orphan*/  author_date; int /*<<< orphan*/  author_email; int /*<<< orphan*/  author_name; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct am_state *state)
{
	FUNC1(state->dir);
	FUNC1(state->author_name);
	FUNC1(state->author_email);
	FUNC1(state->author_date);
	FUNC1(state->msg);
	FUNC0(&state->git_apply_opts);
}