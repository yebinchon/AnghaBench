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
struct bhnd_nvram_store {int /*<<< orphan*/  root_path; int /*<<< orphan*/ * data_opts; int /*<<< orphan*/  data_caps; int /*<<< orphan*/  data; int /*<<< orphan*/ * aliases; scalar_t__ num_aliases; int /*<<< orphan*/ * paths; scalar_t__ num_paths; } ;
struct bhnd_nvram_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  BHND_NVSTORE_ROOT_PATH ; 
 int /*<<< orphan*/  BHND_NVSTORE_ROOT_PATH_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bhnd_nvram_store* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_nvram_data*) ; 
 int /*<<< orphan*/ * FUNC7 (struct bhnd_nvram_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct bhnd_nvram_data*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  FUNC12 (struct bhnd_nvram_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct bhnd_nvram_store*) ; 
 int FUNC14 (struct bhnd_nvram_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(struct bhnd_nvram_store **store,
    struct bhnd_nvram_data *data)
{
	struct bhnd_nvram_store *sc;
	int			 error;

	/* Allocate new instance */
	sc = FUNC5(1, sizeof(*sc));
	if (sc == NULL)
		return (ENOMEM);

	FUNC1(sc);
	FUNC0(sc);

	/* Initialize path hash table */
	sc->num_paths = 0;
	for (size_t i = 0; i < FUNC15(sc->paths); i++)
		FUNC4(&sc->paths[i]);

	/* Initialize alias hash table */
	sc->num_aliases = 0;
	for (size_t i = 0; i < FUNC15(sc->aliases); i++)
		FUNC4(&sc->aliases[i]);

	/* Retain the NVRAM data */
	sc->data = FUNC8(data);
	sc->data_caps = FUNC6(data);
	sc->data_opts = FUNC7(data);
	if (sc->data_opts != NULL) {
		FUNC10(sc->data_opts);
	} else {
		sc->data_opts = FUNC9();
		if (sc->data_opts == NULL) {
			error = ENOMEM;
			goto cleanup;
		}
	}

	/* Register required root path */
	error = FUNC14(sc, BHND_NVSTORE_ROOT_PATH,
	    BHND_NVSTORE_ROOT_PATH_LEN);
	if (error)
		goto cleanup;

	sc->root_path = FUNC12(sc, BHND_NVSTORE_ROOT_PATH,
	    BHND_NVSTORE_ROOT_PATH_LEN);
	FUNC3(sc->root_path, ("missing root path"));

	/* Parse all variables vended by our backing NVRAM data instance,
	 * generating all path entries, alias entries, and variable indexes */
	if ((error = FUNC13(sc)))
		goto cleanup;

	*store = sc;

	FUNC2(sc);
	return (0);

cleanup:
	FUNC2(sc);
	FUNC11(sc);
	return (error);
}