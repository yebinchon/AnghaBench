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
struct object_id {int dummy; } ;
struct cache_entry {int ce_namelen; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 unsigned short S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id*,char const*,struct object_id*,unsigned short*) ; 
 struct cache_entry* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static struct cache_entry *FUNC7(const char *which,
					struct object_id *ent, const char *path,
					int namelen, int stage)
{
	unsigned short mode;
	struct object_id oid;
	struct cache_entry *ce;

	if (FUNC3(the_repository, ent, path, &oid, &mode)) {
		if (which)
			FUNC2("%s: not in %s branch.", path, which);
		return NULL;
	}
	if (mode == S_IFDIR) {
		if (which)
			FUNC2("%s: not a blob in %s branch.", path, which);
		return NULL;
	}
	ce = FUNC4(&the_index, namelen);

	FUNC6(&ce->oid, &oid);
	FUNC5(ce->name, path, namelen);
	ce->ce_flags = FUNC0(stage);
	ce->ce_namelen = namelen;
	ce->ce_mode = FUNC1(mode);
	return ce;
}