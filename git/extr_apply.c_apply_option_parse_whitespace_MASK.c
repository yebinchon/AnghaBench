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
struct option {struct apply_state* value; } ;
struct apply_state {char const* whitespace_option; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct apply_state*,char const*) ; 

__attribute__((used)) static int FUNC2(const struct option *opt,
					 const char *arg, int unset)
{
	struct apply_state *state = opt->value;

	FUNC0(unset);

	state->whitespace_option = arg;
	if (FUNC1(state, arg))
		return -1;
	return 0;
}