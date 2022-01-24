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
struct strbuf {scalar_t__ len; } ;
struct parse_opt_ctx_t {char* opt; int argc; char** argv; scalar_t__ prefix; } ;
struct option {char const* long_name; struct strbuf* value; } ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int have_message ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 scalar_t__ FUNC7 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum parse_opt_result FUNC8(struct parse_opt_ctx_t *ctx,
						 const struct option *opt,
						 const char *arg_not_used,
						 int unset)
{
	struct strbuf *buf = opt->value;
	const char *arg;

	FUNC1(arg_not_used);
	if (unset)
		FUNC0("-F cannot be negated");

	if (ctx->opt) {
		arg = ctx->opt;
		ctx->opt = NULL;
	} else if (ctx->argc > 1) {
		ctx->argc--;
		arg = *++ctx->argv;
	} else
		return FUNC3(FUNC2("option `%s' requires a value"), opt->long_name);

	if (buf->len)
		FUNC6(buf, '\n');
	if (ctx->prefix && !FUNC4(arg))
		arg = FUNC5(ctx->prefix, arg);
	if (FUNC7(buf, arg, 0) < 0)
		return FUNC3(FUNC2("could not read file '%s'"), arg);
	have_message = 1;

	return 0;
}