#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct bhnd_nvram_store {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  path_str; } ;
typedef  TYPE_1__ bhnd_nvstore_path ;
struct TYPE_6__ {int /*<<< orphan*/  alias; } ;
typedef  TYPE_2__ bhnd_nvstore_alias ;
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC5 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *devpath, bhnd_nvram_plist *plist,
    u_long *alias_val)
{
	bhnd_nvstore_alias	*alias;
	char			*pathvar;
	int			 error;

	*alias_val = 0;

	/* Prefer alias value already reserved for this path. */
	alias = FUNC5(sc, path->path_str);
	if (alias != NULL) {
		*alias_val = alias->alias;

		/* Allocate devpathXX variable name */
		FUNC1(&pathvar, "devpath%lu", *alias_val);
		if (pathvar == NULL)
			return (ENOMEM);

		/* Append alias variable to property list */
		error = FUNC3(plist, pathvar, devpath);

		FUNC0(error != EEXIST, ("reserved alias %lu:%s in use",
		   * alias_val, path->path_str));

		FUNC2(pathvar);
		return (error);
	}

	/* Find the next free devpathXX alias entry */
	while (1) {
		/* Skip existing reserved alias values */
		while (FUNC6(sc, *alias_val) != NULL) {
			if (*alias_val == ULONG_MAX)
				return (ENOMEM);

			(*alias_val)++;
		}

		/* Allocate devpathXX variable name */
		FUNC1(&pathvar, "devpath%lu", *alias_val);
		if (pathvar == NULL)
			return (ENOMEM);

		/* If not in-use, we can terminate the search */
		if (!FUNC4(plist, pathvar))
			break;

		/* Keep searching */
		FUNC2(pathvar);

		if (*alias_val == ULONG_MAX)
			return (ENOMEM);

		(*alias_val)++;
	}

	/* Append alias variable to property list */
	error = FUNC3(plist, pathvar, devpath);

	FUNC2(pathvar);
	return (error);
}