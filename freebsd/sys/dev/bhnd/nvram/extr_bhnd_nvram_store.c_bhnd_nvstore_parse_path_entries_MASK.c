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
struct bhnd_nvram_store {int data_caps; int /*<<< orphan*/  data; int /*<<< orphan*/ * root_path; } ;
typedef  int /*<<< orphan*/  bhnd_nvstore_name_info ;

/* Variables and functions */
 int BHND_NVRAM_DATA_CAP_DEVPATHS ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_NVSTORE_NAME_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 char* FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct bhnd_nvram_store*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC6(struct bhnd_nvram_store *sc)
{
	const char	*name;
	void		*cookiep;
	int		 error;

	FUNC0(sc, MA_OWNED);

	/* Skip path registration if the data source does not support device
	 * paths. */
	if (!(sc->data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS)) {
		FUNC1(sc->root_path != NULL, ("missing root path"));
		return (0);
	}

	/* Otherwise, parse and register all paths and path aliases */
	cookiep = NULL;
	while ((name = FUNC3(sc->data, &cookiep))) {
		bhnd_nvstore_name_info info;

		/* Parse the name info */
		error = FUNC4(name,
		    BHND_NVSTORE_NAME_INTERNAL, sc->data_caps, &info);
		if (error)
			return (error);

		/* Register the path */
		error = FUNC5(sc, &info, cookiep);
		if (error) {
			FUNC2("failed to register path for %s: %d\n",
			    name, error);
			return (error);
		}
	}

	return (0);
}