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
struct processing_thread_args {int /*<<< orphan*/  the_configuration; int /*<<< orphan*/  the_runtime_env; int /*<<< orphan*/  the_cache; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct processing_thread_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC7(void *data)
{
	struct processing_thread_args	*args;
	sigset_t new;

	FUNC1("=> processing_thread");
	args = (struct processing_thread_args *)data;

	FUNC6(&new);
	FUNC5(&new, SIGPIPE);
	if (FUNC4(SIG_BLOCK, &new, NULL) != 0)
		FUNC0("processing thread",
			"thread can't block the SIGPIPE signal");

	FUNC3(args->the_cache, args->the_runtime_env,
		args->the_configuration);
	FUNC2(args);
	FUNC1("<= processing_thread");

	return (NULL);
}