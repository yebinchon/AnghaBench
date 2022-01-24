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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  fsck_obj_options ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const**,char const*,char const*) ; 
 int FUNC4 (char const*,char const*,void*) ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(const char *var, const char *value, void *cb)
{
	if (FUNC8(var, "fsck.skiplist") == 0) {
		const char *path;
		struct strbuf sb = STRBUF_INIT;

		if (FUNC3(&path, var, value))
			return 1;
		FUNC6(&sb, "skiplist=%s", path);
		FUNC0((char *)path);
		FUNC2(&fsck_obj_options, sb.buf);
		FUNC7(&sb);
		return 0;
	}

	if (FUNC5(var, "fsck.", &var)) {
		FUNC1(&fsck_obj_options, var, value);
		return 0;
	}

	return FUNC4(var, value, cb);
}