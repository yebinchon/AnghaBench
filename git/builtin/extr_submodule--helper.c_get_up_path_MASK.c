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
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(const char *path)
{
	int i;
	struct strbuf sb = STRBUF_INIT;

	for (i = FUNC0(path); i; i--)
		FUNC2(&sb, "../");

	/*
	 * Check if 'path' ends with slash or not
	 * for having the same output for dir/sub_dir
	 * and dir/sub_dir/
	 */
	if (!FUNC1(path[FUNC4(path) - 1]))
		FUNC2(&sb, "../");

	return FUNC3(&sb, NULL);
}