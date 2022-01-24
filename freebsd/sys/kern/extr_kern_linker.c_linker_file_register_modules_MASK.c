#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mod_metadata {scalar_t__ md_type; TYPE_1__* md_data; } ;
struct TYPE_8__ {char* name; } ;
typedef  TYPE_1__ moduledata_t ;
typedef  TYPE_2__* linker_file_t ;
struct TYPE_9__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MDT_MODULE ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 struct mod_metadata** FUNC1 (int /*<<< orphan*/ ) ; 
 struct mod_metadata** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kld_sx ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*,struct mod_metadata***,struct mod_metadata***,int /*<<< orphan*/ *) ; 
 TYPE_2__* linker_kernel_file ; 
 int /*<<< orphan*/  modmetadata_set ; 
 int FUNC4 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(linker_file_t lf)
{
	struct mod_metadata **start, **stop, **mdp;
	const moduledata_t *moddata;
	int first_error, error;

	FUNC0(FILE, ("linker_file_register_modules: registering modules"
	    " in %s\n", lf->filename));

	FUNC6(&kld_sx, SA_XLOCKED);

	if (FUNC3(lf, "modmetadata_set", &start,
	    &stop, NULL) != 0) {
		/*
		 * This fallback should be unnecessary, but if we get booted
		 * from boot2 instead of loader and we are missing our
		 * metadata then we have to try the best we can.
		 */
		if (lf == linker_kernel_file) {
			start = FUNC1(modmetadata_set);
			stop = FUNC2(modmetadata_set);
		} else
			return (0);
	}
	first_error = 0;
	for (mdp = start; mdp < stop; mdp++) {
		if ((*mdp)->md_type != MDT_MODULE)
			continue;
		moddata = (*mdp)->md_data;
		FUNC0(FILE, ("Registering module %s in %s\n",
		    moddata->name, lf->filename));
		error = FUNC4(moddata, lf);
		if (error) {
			FUNC5("Module %s failed to register: %d\n",
			    moddata->name, error);
			if (first_error == 0)
				first_error = error;
		}
	}
	return (first_error);
}