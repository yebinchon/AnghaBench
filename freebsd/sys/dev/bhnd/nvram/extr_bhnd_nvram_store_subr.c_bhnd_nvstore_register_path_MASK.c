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
typedef  size_t uint32_t ;
struct bhnd_nvram_store {scalar_t__ num_paths; int /*<<< orphan*/ * paths; } ;
typedef  int /*<<< orphan*/  bhnd_nvstore_path_list ;
struct TYPE_4__ {int /*<<< orphan*/  path_str; } ;
typedef  TYPE_1__ bhnd_nvstore_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HASHINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/ * FUNC2 (struct bhnd_nvram_store*,char const*,size_t) ; 
 TYPE_1__* FUNC3 (char const*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  np_link ; 

int
FUNC6(struct bhnd_nvram_store *sc, const char *path_str,
    size_t path_len)
{
	bhnd_nvstore_path_list	*plist;
	bhnd_nvstore_path	*path;
	uint32_t		 h;

	FUNC0(sc, MA_OWNED);

	/* Already exists? */
	if (FUNC2(sc, path_str, path_len) != NULL)
		return (0);

	/* Can't represent more than SIZE_MAX paths */
	if (sc->num_paths == SIZE_MAX)
		return (ENOMEM);

	/* Allocate new entry */
	path = FUNC3(path_str, path_len);
	if (path == NULL)
		return (ENOMEM);

	/* Insert in path hash table */
	h = FUNC4(path->path_str, HASHINIT);
	plist = &sc->paths[h % FUNC5(sc->paths)];
	FUNC1(plist, path, np_link);

	/* Increment path count */
	sc->num_paths++;

	return (0);
}