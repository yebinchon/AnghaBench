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

/* Variables and functions */
 int Z_BEST_COMPRESSION ; 
 int Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*,char const*) ; 
 int FUNC7 (char const*,char const*,void*) ; 
 int FUNC8 (char const*,char const*) ; 
 int FUNC9 (char const*,char const*) ; 
 int FUNC10 (char const*,char const*) ; 
 int FUNC11 (char const*,char const*,void*) ; 
 int pack_compression_level ; 
 int pack_compression_seen ; 
 int /*<<< orphan*/  pack_size_limit_cfg ; 
 int /*<<< orphan*/  pager_use_color ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 

int FUNC14(const char *var, const char *value, void *cb)
{
	if (FUNC12(var, "core."))
		return FUNC7(var, value, cb);

	if (FUNC12(var, "user.") ||
	    FUNC12(var, "author.") ||
	    FUNC12(var, "committer."))
		return FUNC11(var, value, cb);

	if (FUNC12(var, "i18n."))
		return FUNC8(var, value);

	if (FUNC12(var, "branch."))
		return FUNC6(var, value);

	if (FUNC12(var, "push."))
		return FUNC10(var, value);

	if (FUNC12(var, "mailmap."))
		return FUNC9(var, value);

	if (FUNC12(var, "advice.") || FUNC12(var, "color.advice"))
		return FUNC5(var, value);

	if (!FUNC13(var, "pager.color") || !FUNC13(var, "color.pager")) {
		pager_use_color = FUNC2(var,value);
		return 0;
	}

	if (!FUNC13(var, "pack.packsizelimit")) {
		pack_size_limit_cfg = FUNC4(var, value);
		return 0;
	}

	if (!FUNC13(var, "pack.compression")) {
		int level = FUNC3(var, value);
		if (level == -1)
			level = Z_DEFAULT_COMPRESSION;
		else if (level < 0 || level > Z_BEST_COMPRESSION)
			FUNC1(FUNC0("bad pack compression level %d"), level);
		pack_compression_level = level;
		pack_compression_seen = 1;
		return 0;
	}

	/* Add other config variables here and to Documentation/config.txt. */
	return 0;
}