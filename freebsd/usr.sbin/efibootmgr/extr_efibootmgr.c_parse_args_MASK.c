#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int set_inactive; int set_active; int has_bootnum; int delete; int copy; int create; int dry_run; int delete_bootnext; int set_bootnext; int once; int del_timeout; int set_timeout; int verbose; void* order; void* loader; void* timeout; void* label; void* kernel; void* env; void* cp_src; void* bootnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_USAGE ; 
 int /*<<< orphan*/  BOOTNEXT_USAGE ; 
 int /*<<< orphan*/  CREATE_USAGE ; 
 int /*<<< orphan*/  DELETE_USAGE ; 
 int /*<<< orphan*/  ORDER_USAGE ; 
 int /*<<< orphan*/  USAGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lopts ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  optarg ; 
 TYPE_1__ opts ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(int argc, char *argv[])
{
	int ch;

	while ((ch = FUNC2(argc, argv, "AaBb:C:cDe:hk:L:l:NnOo:Tt:v",
		    lopts, NULL)) != -1) {
		switch (ch) {
		case 'A':
			opts.set_inactive = true;
			break;
		case 'a':
			opts.set_active = true;
			break;
		case 'b':
			opts.has_bootnum = true;
			opts.bootnum = FUNC5(optarg, NULL, 16);
			break;
		case 'B':
			opts.delete = true;
			break;
		case 'C':
			opts.copy = true;
			opts.cp_src = FUNC5(optarg, NULL, 16);
		case 'c':
			opts.create = true;
			break;
		case 'D': /* should be remove dups XXX */
			opts.dry_run = true;
			break;
		case 'e':
			FUNC1(opts.env);
			opts.env = FUNC4(optarg);
			break;
		case 'h':
		default:
			FUNC0(1, "%s", USAGE);
			break;
		case 'k':
			FUNC1(opts.kernel);
			opts.kernel = FUNC4(optarg);
			break;
		case 'L':
			FUNC1(opts.label);
			opts.label = FUNC4(optarg);
			break;
		case 'l':
			FUNC1(opts.loader);
			opts.loader = FUNC4(optarg);
			opts.loader = FUNC3(opts.loader);
			break;
		case 'N':
			opts.delete_bootnext = true;
			break;
		case 'n':
			opts.set_bootnext = true;
			break;
		case 'O':
			opts.once = true;
			break;
		case 'o':
			FUNC1(opts.order);
			opts.order = FUNC4(optarg);
			break;
		case 'T':
			opts.del_timeout = true;
			break;
		case 't':
			opts.set_timeout = true;
			opts.timeout = FUNC5(optarg, NULL, 10);
			break;
		case 'v':
			opts.verbose = true;
			break;
		}
	}
	if (opts.create) {
		if (!opts.loader)
			FUNC0(1, "%s",CREATE_USAGE);
		return;
	}

	if (opts.order && !(opts.order))
		FUNC0(1, "%s", ORDER_USAGE);

	if ((opts.set_inactive || opts.set_active) && !opts.has_bootnum)
		FUNC0(1, "%s", ACTIVE_USAGE);

	if (opts.delete && !opts.has_bootnum)
		FUNC0(1, "%s", DELETE_USAGE);

	if (opts.set_bootnext && !opts.has_bootnum)
		FUNC0(1, "%s", BOOTNEXT_USAGE);
}