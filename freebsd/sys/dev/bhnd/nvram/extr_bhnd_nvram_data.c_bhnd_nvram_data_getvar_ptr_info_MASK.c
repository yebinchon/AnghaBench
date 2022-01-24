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
struct bhnd_nvram_vardefn {int /*<<< orphan*/ * fmt; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_val_fmt ;
typedef  scalar_t__ bhnd_nvram_type ;

/* Variables and functions */
 int BHND_NVRAM_DATA_CAP_DEVPATHS ; 
 int BHND_NVRAM_DATA_CAP_READ_PTR ; 
 scalar_t__ BHND_NVRAM_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct bhnd_nvram_data*) ; 
 char* FUNC2 (struct bhnd_nvram_data*,void*) ; 
 void* FUNC3 (struct bhnd_nvram_data*,void*,size_t*,scalar_t__*) ; 
 struct bhnd_nvram_vardefn* FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  bhnd_nvram_val_bcm_string_fmt ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 

__attribute__((used)) static const void *
FUNC7(struct bhnd_nvram_data *nv, void *cookiep,
    size_t *len, bhnd_nvram_type *type, const bhnd_nvram_val_fmt **fmt)
{
	const struct bhnd_nvram_vardefn	*vdefn;
	const char			*name;
	const void			*vptr;

	FUNC0(FUNC1(nv) & BHND_NVRAM_DATA_CAP_READ_PTR,
	    ("instance does not advertise READ_PTR support"));

	/* Fetch pointer to variable data */
	vptr = FUNC3(nv, cookiep, len, type);
	if (vptr == NULL)
		return (NULL);

	/* Select a default value format implementation */


	/* Fetch the reference variable name */
	name = FUNC2(nv, cookiep);

	/* Trim path prefix, if any; the Broadcom NVRAM format assumes a global
	 * namespace for all variable definitions */
	if (FUNC1(nv) & BHND_NVRAM_DATA_CAP_DEVPATHS)
		name = FUNC5(name);

	/* Check the variable definition table for a matching entry; if
	 * it exists, use it to populate the value format. */
	vdefn = FUNC4(name);
	if (vdefn != NULL) {
		FUNC0(vdefn->fmt != NULL,
		    ("NULL format for %s", name));
		*fmt = vdefn->fmt;
	} else if (*type == BHND_NVRAM_TYPE_STRING) {
		/* Default to Broadcom-specific string interpretation */
		*fmt = &bhnd_nvram_val_bcm_string_fmt;
	} else {
		/* Fall back on native formatting */
		*fmt = FUNC6(*type);
	}

	return (vptr);
}