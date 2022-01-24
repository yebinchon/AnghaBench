#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bhnd_nvram_store {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * index; int /*<<< orphan*/  path_str; } ;
typedef  TYPE_1__ bhnd_nvstore_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC3 (struct bhnd_nvram_store*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_nvram_store*,TYPE_1__*) ; 

void *
FUNC5(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *name)
{
	FUNC0(sc, MA_OWNED);

	/* No index */
	if (path->index == NULL) {
		/* An index is required for all non-empty, non-root path
		 * instances */
		FUNC1(FUNC4(sc, path),
		    ("missing index for non-root path %s", path->path_str));

		/* Look up directly in NVRAM data */
		return (FUNC2(sc->data, name));
	}

	/* Otherwise, delegate to an index-based lookup */
	return (FUNC3(sc, path->index, name));
}