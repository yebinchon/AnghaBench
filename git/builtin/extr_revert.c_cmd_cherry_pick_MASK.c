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
struct replay_opts {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 struct replay_opts REPLAY_OPTS_INIT ; 
 int /*<<< orphan*/  REPLAY_PICK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char const**,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC3 (struct replay_opts*) ; 

int FUNC4(int argc, const char **argv, const char *prefix)
{
	struct replay_opts opts = REPLAY_OPTS_INIT;
	int res;

	opts.action = REPLAY_PICK;
	FUNC3(&opts);
	res = FUNC2(argc, argv, &opts);
	if (res < 0)
		FUNC1(FUNC0("cherry-pick failed"));
	return res;
}