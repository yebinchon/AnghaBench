#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mod_depend {int dummy; } ;
typedef  TYPE_1__* modlist_t ;
typedef  int /*<<< orphan*/ * linker_file_t ;
struct TYPE_3__ {int /*<<< orphan*/ * container; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LINKER_UNLOAD_NORMAL ; 
 int /*<<< orphan*/  kld_sx ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*,struct mod_depend*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(const char *modname, struct mod_depend *verinfo,
    linker_file_t lf)
{
	modlist_t mod;
	int error;

	FUNC3(&kld_sx);
	if (lf == NULL) {
		FUNC0(modname != NULL,
		    ("linker_release_module: no file or name"));
		mod = FUNC2(modname, verinfo);
		if (mod == NULL) {
			FUNC4(&kld_sx);
			return (ESRCH);
		}
		lf = mod->container;
	} else
		FUNC0(modname == NULL && verinfo == NULL,
		    ("linker_release_module: both file and name"));
	error =	FUNC1(lf, LINKER_UNLOAD_NORMAL);
	FUNC4(&kld_sx);
	return (error);
}