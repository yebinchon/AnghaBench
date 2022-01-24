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
struct cache_entry {int ce_namelen; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int /*<<< orphan*/  CE_VALID ; 
 scalar_t__ FUNC0 (struct cache_entry*,int) ; 
 scalar_t__ allow_add ; 
 scalar_t__ allow_replace ; 
 scalar_t__ assume_unchanged ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (char*,char const*) ; 
 struct cache_entry* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  FUNC9 (char const*,unsigned int) ; 

__attribute__((used)) static int FUNC10(unsigned int mode, const struct object_id *oid,
			 const char *path, int stage)
{
	int len, option;
	struct cache_entry *ce;

	if (!FUNC9(path, mode))
		return FUNC3("Invalid path '%s'", path);

	len = FUNC8(path);
	ce = FUNC4(&the_index, len);

	FUNC6(&ce->oid, oid);
	FUNC5(ce->name, path, len);
	ce->ce_flags = FUNC1(stage);
	ce->ce_namelen = len;
	ce->ce_mode = FUNC2(mode);
	if (assume_unchanged)
		ce->ce_flags |= CE_VALID;
	option = allow_add ? ADD_CACHE_OK_TO_ADD : 0;
	option |= allow_replace ? ADD_CACHE_OK_TO_REPLACE : 0;
	if (FUNC0(ce, option))
		return FUNC3("%s: cannot add to the index - missing --add option?",
			     path);
	FUNC7("add '%s'", path);
	return 0;
}