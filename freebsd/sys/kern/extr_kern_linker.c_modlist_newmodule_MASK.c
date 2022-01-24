#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct modlist {int dummy; } ;
typedef  TYPE_1__* modlist_t ;
typedef  int /*<<< orphan*/  linker_file_t ;
struct TYPE_5__ {char const* name; int version; int /*<<< orphan*/  container; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_LINKER ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  found_modules ; 
 int /*<<< orphan*/  link ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static modlist_t
FUNC3(const char *modname, int version, linker_file_t container)
{
	modlist_t mod;

	mod = FUNC1(sizeof(struct modlist), M_LINKER, M_NOWAIT | M_ZERO);
	if (mod == NULL)
		FUNC2("no memory for module list");
	mod->container = container;
	mod->name = modname;
	mod->version = version;
	FUNC0(&found_modules, mod, link);
	return (mod);
}