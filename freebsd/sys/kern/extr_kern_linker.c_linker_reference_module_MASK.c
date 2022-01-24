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
struct mod_depend {int dummy; } ;
typedef  TYPE_1__* modlist_t ;
typedef  TYPE_2__* linker_file_t ;
struct TYPE_7__ {int /*<<< orphan*/  refs; } ;
struct TYPE_6__ {TYPE_2__* container; } ;

/* Variables and functions */
 int /*<<< orphan*/  kld_sx ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,struct mod_depend*,TYPE_2__**) ; 
 TYPE_1__* FUNC1 (char const*,struct mod_depend*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(const char *modname, struct mod_depend *verinfo,
    linker_file_t *result)
{
	modlist_t mod;
	int error;

	FUNC2(&kld_sx);
	if ((mod = FUNC1(modname, verinfo)) != NULL) {
		*result = mod->container;
		(*result)->refs++;
		FUNC3(&kld_sx);
		return (0);
	}

	error = FUNC0(NULL, modname, NULL, verinfo, result);
	FUNC3(&kld_sx);
	return (error);
}