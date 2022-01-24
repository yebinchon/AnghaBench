#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmgr_opts_t ;
struct TYPE_3__ {char* label; int bootnum; int /*<<< orphan*/  verbose; int /*<<< orphan*/  timeout; scalar_t__ set_timeout; scalar_t__ del_timeout; scalar_t__ delete; scalar_t__ delete_bootnext; scalar_t__ set_bootnext; int /*<<< orphan*/ * order; scalar_t__ set_active; scalar_t__ set_inactive; scalar_t__ has_bootnum; int /*<<< orphan*/  dry_run; int /*<<< orphan*/  env; int /*<<< orphan*/  kernel; int /*<<< orphan*/  loader; scalar_t__ create; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ opts ; 
 int /*<<< orphan*/  FUNC10 (int,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(int argc, char *argv[])
{

	if (!FUNC3())
		FUNC4(1, "efi variables not supported on this system. root? kldload efirt?");

	FUNC9(&opts, 0, sizeof (bmgr_opts_t));
	FUNC10(argc, argv);
	FUNC12();

	if (opts.create)
		/*
		 * side effect, adds to boot order, but not yet active.
		 */
		FUNC8(opts.label ? opts.label : "",
		    opts.loader, opts.kernel, opts.env, opts.dry_run,
		    opts.has_bootnum ? opts.bootnum : -1, opts.set_active);
	else if (opts.set_active || opts.set_inactive )
		FUNC5(opts.bootnum, opts.set_active);
	else if (opts.order != NULL)
		FUNC13(opts.order); /* create a new bootorder with opts.order */
	else if (opts.set_bootnext)
		FUNC6(opts.bootnum);
	else if (opts.delete_bootnext)
		FUNC0();
	else if (opts.delete)
		FUNC1(opts.bootnum);
	else if (opts.del_timeout)
		FUNC2();
	else if (opts.set_timeout)
		FUNC7(opts.timeout);

	FUNC11(opts.verbose);
}