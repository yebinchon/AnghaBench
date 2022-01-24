#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bhnd_nvram_store {int /*<<< orphan*/  data; TYPE_1__* root_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  path_str; } ;
typedef  TYPE_1__ bhnd_nvstore_path ;
struct TYPE_7__ {int /*<<< orphan*/  alias; } ;
typedef  TYPE_2__ bhnd_nvstore_alias ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 scalar_t__ BHND_NVRAM_TYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int ENOMEM ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct bhnd_nvram_store*,TYPE_1__*,char const*) ; 

int
FUNC13(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *name, bhnd_nvram_val *value)
{
	bhnd_nvram_val		*prop_val;
	const char		*full_name;
	void			*cookiep;
	char			*namebuf;
	int			 error;
	bool			 nvram_committed;

	namebuf = NULL;
	prop_val = NULL;

	/* Determine whether the variable is currently defined in the
	 * backing NVRAM data, and derive its full path-prefixed name */
	nvram_committed = false;
	cookiep = FUNC12(sc, path, name);
	if (cookiep != NULL) {
		/* Variable is defined in the backing data */
		nvram_committed = true;

		/* Use the existing variable name */
		full_name = FUNC5(sc->data, cookiep);
	} else if (path == sc->root_path) {
		/* No prefix required for root path */
		full_name = name;
	} else {
		bhnd_nvstore_alias	*alias;
		int			 len;

		/* New variable is being set; we need to determine the
		 * appropriate path prefix */
		alias = FUNC11(sc, path->path_str);
		if (alias != NULL) {
			/* Use <alias>:name */
			len = FUNC1(&namebuf, "%lu:%s", alias->alias,
			    name);
		} else {
			/* Use path/name */
			len = FUNC1(&namebuf, "%s/%s",
			    path->path_str, name);
		}

		if (len < 0)
			return (ENOMEM);

		full_name = namebuf;
	}

	/* Allow the data store to filter the NVRAM operation */
	if (FUNC10(value) == BHND_NVRAM_TYPE_NULL) {
		error = FUNC4(sc->data, full_name);
		if (error) {
			FUNC0("cannot unset property %s: %d\n", full_name,
			    error);
			goto cleanup;
		}

		if ((prop_val = FUNC8(value)) == NULL) {
			error = ENOMEM;
			goto cleanup;
		}
	} else {
		error = FUNC3(sc->data, full_name,
		    value,  &prop_val);
		if (error) {
			FUNC0("cannot set property %s: %d\n", full_name,
			    error);
			goto cleanup;
		}
	}

	/* Add relative variable name to the per-path update list */
	if (FUNC10(value) == BHND_NVRAM_TYPE_NULL &&
	    !nvram_committed)
	{
		/* This is a deletion request for a variable not defined in
		 * out backing store; we can simply remove the corresponding
		 * update entry. */
		FUNC6(path->pending, name);
	} else {
		/* Update or append a pending update entry */
		error = FUNC7(path->pending, name,
		    prop_val);
		if (error)
			goto cleanup;
	}

	/* Success */
	error = 0;

cleanup:
	if (namebuf != NULL)
		FUNC2(namebuf);

	if (prop_val != NULL)
		FUNC9(prop_val);

	return (error);
}