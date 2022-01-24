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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhnd_nvram_store {int data_caps; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pending; } ;
typedef  TYPE_1__ bhnd_nvstore_path ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_prop ;
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;

/* Variables and functions */
 int BHND_NVRAM_DATA_CAP_DEVPATHS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXPORT_COMMITTED ; 
 int /*<<< orphan*/  EXPORT_DELETED ; 
 int /*<<< orphan*/  EXPORT_UNCOMMITTED ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct bhnd_nvram_store*,TYPE_1__*,void**) ; 

__attribute__((used)) static int
FUNC11(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, bhnd_nvram_plist *merged, uint32_t flags)
{
	void	*cookiep, *idxp;
	int	 error;

	/* Populate merged list with all pending variables */
	if (FUNC0(flags, EXPORT_UNCOMMITTED)) {
		bhnd_nvram_prop *prop;

		prop = NULL;
		while ((prop = FUNC6(path->pending, prop))) {
			/* Skip variables marked for deletion */
			if (!FUNC0(flags, EXPORT_DELETED)) {
				if (FUNC7(prop))
					continue;
			}

			/* Append to merged list */
			error = FUNC3(merged, prop);
			if (error)
				return (error);
		}
	}

	/* Skip merging committed variables? */
	if (!FUNC0(flags, EXPORT_COMMITTED))
		return (0);

	/* Merge in the committed NVRAM variables */
	idxp = NULL;
	while ((cookiep = FUNC10(sc, path, &idxp))) {
		const char	*name;
		bhnd_nvram_val	*val;

		/* Fetch the variable name */
		name = FUNC2(sc->data, cookiep);

		/* Trim device path prefix */
		if (sc->data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS)
			name = FUNC8(name);

		/* Skip if already defined in pending updates */
		if (FUNC0(flags, EXPORT_UNCOMMITTED)) {
			if (FUNC5(path->pending, name))
				continue;
		}

		/* Skip if higher precedence value was already defined. This
		 * may occur if the underlying data store contains duplicate
		 * keys; iteration will always return the definition with
		 * the highest precedence first */
		if (FUNC5(merged, name))
			continue;

		/* Fetch the variable's value representation */
		if ((error = FUNC1(sc->data, cookiep, &val)))
			return (error);

		/* Add to path variable list */
		error = FUNC4(merged, name, val);
		FUNC9(val);
		if (error)
			return (error);
	}

	return (0);
}