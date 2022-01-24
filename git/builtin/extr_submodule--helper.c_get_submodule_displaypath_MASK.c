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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 () ; 
 char const* FUNC2 (char const*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char const*,char const*) ; 

__attribute__((used)) static char *FUNC6(const char *path, const char *prefix)
{
	const char *super_prefix = FUNC1();

	if (prefix && super_prefix) {
		FUNC0("cannot have prefix '%s' and superprefix '%s'",
		    prefix, super_prefix);
	} else if (prefix) {
		struct strbuf sb = STRBUF_INIT;
		char *displaypath = FUNC4(FUNC2(path, prefix, &sb));
		FUNC3(&sb);
		return displaypath;
	} else if (super_prefix) {
		return FUNC5("%s%s", super_prefix, path);
	} else {
		return FUNC4(path);
	}
}