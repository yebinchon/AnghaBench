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
struct image_args {scalar_t__ stringspace; scalar_t__ envc; int /*<<< orphan*/ * endp; int /*<<< orphan*/  begin_envv; int /*<<< orphan*/ * begin_argv; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct image_args *args, size_t consume, ssize_t extend)
{
	ssize_t offset;

	FUNC0(args->endp != NULL, ("endp not initialized"));
	FUNC0(args->begin_argv != NULL, ("begin_argp not initialized"));

	offset = extend - consume;
	if (args->stringspace < offset)
		return (E2BIG);
	FUNC1(args->begin_argv + extend, args->begin_argv + consume,
	    args->endp - args->begin_argv + consume);
	if (args->envc > 0)
		args->begin_envv += offset;
	args->endp += offset;
	args->stringspace -= offset;
	return (0);
}