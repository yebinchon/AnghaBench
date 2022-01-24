#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rebase_options {char* head_name; int flags; scalar_t__ allow_rerere_autoupdate; scalar_t__ signoff; int /*<<< orphan*/  gpg_sign_opt; int /*<<< orphan*/  strategy_opts; int /*<<< orphan*/  strategy; int /*<<< orphan*/  orig_head; TYPE_2__* onto; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int REBASE_NO_QUIET ; 
 int REBASE_VERBOSE ; 
 scalar_t__ RERERE_AUTOUPDATE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rebase_options*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct rebase_options *opts)
{
	FUNC2(FUNC1("head-name", opts), "%s",
		   opts->head_name ? opts->head_name : "detached HEAD");
	FUNC2(FUNC1("onto", opts), "%s",
		   opts->onto ? FUNC0(&opts->onto->object.oid) : "");
	FUNC2(FUNC1("orig-head", opts), "%s",
		   FUNC0(&opts->orig_head));
	FUNC2(FUNC1("quiet", opts), "%s",
		   opts->flags & REBASE_NO_QUIET ? "" : "t");
	if (opts->flags & REBASE_VERBOSE)
		FUNC2(FUNC1("verbose", opts), "%s", "");
	if (opts->strategy)
		FUNC2(FUNC1("strategy", opts), "%s",
			   opts->strategy);
	if (opts->strategy_opts)
		FUNC2(FUNC1("strategy_opts", opts), "%s",
			   opts->strategy_opts);
	if (opts->allow_rerere_autoupdate > 0)
		FUNC2(FUNC1("allow_rerere_autoupdate", opts),
			   "-%s-rerere-autoupdate",
			   opts->allow_rerere_autoupdate == RERERE_AUTOUPDATE ?
				"" : "-no");
	if (opts->gpg_sign_opt)
		FUNC2(FUNC1("gpg_sign_opt", opts), "%s",
			   opts->gpg_sign_opt);
	if (opts->signoff)
		FUNC2(FUNC1("strategy", opts), "--signoff");

	return 0;
}