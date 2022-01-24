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
struct replay_opts {scalar_t__ mainline; } ;
struct option {int /*<<< orphan*/  long_name; struct replay_opts* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
			  const char *arg, int unset)
{
	struct replay_opts *replay = opt->value;
	char *end;

	if (unset) {
		replay->mainline = 0;
		return 0;
	}

	replay->mainline = FUNC2(arg, &end, 10);
	if (*end || replay->mainline <= 0)
		return FUNC1(FUNC0("option `%s' expects a number greater than zero"),
			     opt->long_name);

	return 0;
}