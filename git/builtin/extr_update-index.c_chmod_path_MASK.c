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
struct cache_entry {int dummy; } ;

/* Variables and functions */
 struct cache_entry** active_cache ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cache_entry*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(char flip, const char *path)
{
	int pos;
	struct cache_entry *ce;

	pos = FUNC0(path, FUNC4(path));
	if (pos < 0)
		goto fail;
	ce = active_cache[pos];
	if (FUNC1(ce, flip) < 0)
		goto fail;

	FUNC3("chmod %cx '%s'", flip, path);
	return;
 fail:
	FUNC2("git update-index: cannot chmod %cx '%s'", flip, path);
}