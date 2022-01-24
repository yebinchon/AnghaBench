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
struct parse_opt_ctx_t {char const** argv; int argc; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int,struct object_id*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,unsigned int*,struct object_id*,char const**) ; 
 scalar_t__ FUNC7 (char const*,int,unsigned int*) ; 

__attribute__((used)) static enum parse_opt_result FUNC8(
	struct parse_opt_ctx_t *ctx, const struct option *opt,
	const char *arg, int unset)
{
	struct object_id oid;
	unsigned int mode;
	const char *path;

	FUNC1(unset);
	FUNC0(arg);

	if (!FUNC6(ctx->argv[1], &mode, &oid, &path)) {
		if (FUNC2(mode, &oid, path, 0))
			FUNC3("git update-index: --cacheinfo cannot add %s", path);
		ctx->argv++;
		ctx->argc--;
		return 0;
	}
	if (ctx->argc <= 3)
		return FUNC4("option 'cacheinfo' expects <mode>,<sha1>,<path>");
	if (FUNC7(*++ctx->argv, 8, &mode) ||
	    FUNC5(*++ctx->argv, &oid) ||
	    FUNC2(mode, &oid, *++ctx->argv, 0))
		FUNC3("git update-index: --cacheinfo cannot add %s", *ctx->argv);
	ctx->argc -= 3;
	return 0;
}