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
struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct cache_entry {char* name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int FUNC1 (struct cache_entry const*,char const*,int,struct stat*) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,struct object_id*) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC7(const char *path, int len, struct stat *st)
{
	struct object_id oid;
	int pos = FUNC2(path, len);

	/* Exact match: file or existing gitlink */
	if (pos >= 0) {
		const struct cache_entry *ce = active_cache[pos];
		if (FUNC0(ce->ce_mode)) {

			/* Do nothing to the index if there is no HEAD! */
			if (FUNC5(path, "HEAD", &oid) < 0)
				return 0;

			return FUNC1(ce, path, len, st);
		}
		/* Should this be an unconditional error? */
		return FUNC4(path);
	}

	/* Inexact match: is there perhaps a subdirectory match? */
	pos = -pos-1;
	while (pos < active_nr) {
		const struct cache_entry *ce = active_cache[pos++];

		if (FUNC6(ce->name, path, len))
			break;
		if (ce->name[len] > '/')
			break;
		if (ce->name[len] < '/')
			continue;

		/* Subdirectory match - error out */
		return FUNC3("%s: is a directory - add individual files instead", path);
	}

	/* No match - should we add it as a gitlink? */
	if (!FUNC5(path, "HEAD", &oid))
		return FUNC1(NULL, path, len, st);

	/* Error out. */
	return FUNC3("%s: is a directory - add files inside instead", path);
}