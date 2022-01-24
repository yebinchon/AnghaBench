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
struct parse_opt_ctx_t {int argc; int /*<<< orphan*/  argv; } ;
struct option {int* value; } ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;
struct TYPE_2__ {char* prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ active_cache_changed ; 
 int FUNC2 (int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* startup_info ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static enum parse_opt_result FUNC4(
	struct parse_opt_ctx_t *ctx, const struct option *opt,
	const char *arg, int unset)
{
	int *has_errors = opt->value;
	const char *prefix = startup_info->prefix;

	FUNC1(unset);
	FUNC0(arg);

	/* consume remaining arguments. */
	*has_errors = FUNC2(ctx->argc, ctx->argv,
				prefix, prefix ? FUNC3(prefix) : 0);
	if (*has_errors)
		active_cache_changed = 0;

	ctx->argv += ctx->argc - 1;
	ctx->argc = 1;
	return 0;
}