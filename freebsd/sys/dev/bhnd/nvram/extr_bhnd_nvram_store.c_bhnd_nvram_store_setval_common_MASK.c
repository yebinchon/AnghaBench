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
struct bhnd_nvram_store {int /*<<< orphan*/  data_caps; } ;
typedef  int /*<<< orphan*/  bhnd_nvstore_path ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ bhnd_nvstore_name_info ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_NVSTORE_NAME_EXTERNAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (struct bhnd_nvram_store*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct bhnd_nvram_store*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct bhnd_nvram_store *sc, const char *name,
    bhnd_nvram_val *value)
{
	bhnd_nvstore_path	*path;
	bhnd_nvstore_name_info	 info;
	int			 error;

	FUNC0(sc, MA_OWNED);

	/* Parse the variable name */
	error = FUNC1(name, BHND_NVSTORE_NAME_EXTERNAL,
	    sc->data_caps, &info);
	if (error)
		return (error);

	/* Fetch the variable's enclosing path entry */
	if ((path = FUNC3(sc, &info)) == NULL)
		return (error);

	/* Register the update entry */
	return (FUNC2(sc, path, info.name, value));
}