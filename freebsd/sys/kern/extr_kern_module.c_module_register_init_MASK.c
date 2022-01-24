#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; int /*<<< orphan*/  priv; scalar_t__ evhand; } ;
typedef  TYPE_2__ moduledata_t ;
typedef  TYPE_3__* module_t ;
struct TYPE_11__ {TYPE_1__* file; } ;
struct TYPE_9__ {int /*<<< orphan*/  modules; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOD_LOAD ; 
 int /*<<< orphan*/  MOD_SLOCK ; 
 int /*<<< orphan*/  MOD_SUNLOCK ; 
 int /*<<< orphan*/  MOD_UNLOAD ; 
 int /*<<< orphan*/  MOD_XLOCK ; 
 int /*<<< orphan*/  MOD_XUNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flink ; 
 TYPE_3__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,void*,int /*<<< orphan*/ ,int) ; 

void
FUNC9(const void *arg)
{
	const moduledata_t *data = (const moduledata_t *)arg;
	int error;
	module_t mod;

	FUNC5(&Giant);
	MOD_SLOCK;
	mod = FUNC3(data->name);
	if (mod == NULL)
		FUNC7("module_register_init: module named %s not found\n",
		    data->name);
	MOD_SUNLOCK;
	error = FUNC0(mod, MOD_LOAD);
	if (error) {
		FUNC0(mod, MOD_UNLOAD);
		MOD_XLOCK;
		FUNC4(mod);
		MOD_XUNLOCK;
		FUNC8("module_register_init: MOD_LOAD (%s, %p, %p) error"
		    " %d\n", data->name, (void *)data->evhand, data->priv,
		    error); 
	} else {
		MOD_XLOCK;
		if (mod->file) {
			/*
			 * Once a module is successfully loaded, move
			 * it to the head of the module list for this
			 * linker file.  This resorts the list so that
			 * when the kernel linker iterates over the
			 * modules to unload them, it will unload them
			 * in the reverse order they were loaded.
			 */
			FUNC2(&mod->file->modules, mod, flink);
			FUNC1(&mod->file->modules, mod, flink);
		}
		MOD_XUNLOCK;
	}
	FUNC6(&Giant);
}