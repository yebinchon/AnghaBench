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
struct bhnd_nvram_store {int /*<<< orphan*/  data; int /*<<< orphan*/  data_caps; } ;
typedef  int /*<<< orphan*/  bhnd_nvstore_path ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ bhnd_nvstore_name_info ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;
typedef  int /*<<< orphan*/  bhnd_nvram_prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  BHND_NVSTORE_NAME_EXTERNAL ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_store*) ; 
 int ENOENT ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,void*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC6 (struct bhnd_nvram_store*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct bhnd_nvram_store*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct bhnd_nvram_store*,TYPE_1__*) ; 

int
FUNC9(struct bhnd_nvram_store *sc, const char *name,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	bhnd_nvstore_name_info	 info;
	bhnd_nvstore_path	*path;
	bhnd_nvram_prop		*prop;
	void			*cookiep;
	int			 error;

	FUNC0(sc);

	/* Parse the variable name */
	error = FUNC5(name, BHND_NVSTORE_NAME_EXTERNAL,
	    sc->data_caps, &info);
	if (error)
		goto finished;

	/* Fetch the variable's enclosing path entry */
	if ((path = FUNC8(sc, &info)) == NULL) {
		error = ENOENT;
		goto finished;
	}

	/* Search uncommitted updates first */
	prop = FUNC7(sc, path, info.name);
	if (prop != NULL) {
		if (FUNC4(prop)) {
			/* NULL denotes a pending deletion */
			error = ENOENT;
		} else {
			error = FUNC3(prop, outp, olen, otype);
		}
		goto finished;
	}

	/* Search the backing NVRAM data */
	cookiep = FUNC6(sc, path, info.name);
	if (cookiep != NULL) {
		/* Found in backing store */
		error = FUNC2(sc->data, cookiep, outp, olen,
		     otype);
		goto finished;
	}

	/* Not found */
	error = ENOENT;

finished:
	FUNC1(sc);
	return (error);
}