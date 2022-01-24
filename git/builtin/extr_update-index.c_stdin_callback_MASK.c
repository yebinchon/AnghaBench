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
struct parse_opt_ctx_t {int argc; } ;
struct option {int* value; int /*<<< orphan*/  long_name; } ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum parse_opt_result FUNC3(
	struct parse_opt_ctx_t *ctx, const struct option *opt,
	const char *arg, int unset)
{
	int *read_from_stdin = opt->value;

	FUNC1(unset);
	FUNC0(arg);

	if (ctx->argc != 1)
		return FUNC2("option '%s' must be the last argument", opt->long_name);
	*read_from_stdin = 1;
	return 0;
}