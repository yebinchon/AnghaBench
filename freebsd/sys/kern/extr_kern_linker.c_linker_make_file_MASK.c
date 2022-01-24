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
typedef  TYPE_1__* linker_file_t ;
typedef  scalar_t__ linker_class_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
struct TYPE_4__ {int refs; int /*<<< orphan*/  modules; int /*<<< orphan*/  common; scalar_t__ loadcnt; int /*<<< orphan*/ * deps; scalar_t__ ndeps; int /*<<< orphan*/  id; void* pathname; void* filename; scalar_t__ flags; scalar_t__ userrefs; scalar_t__ ctors_size; scalar_t__ ctors_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LINKER ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cold ; 
 int /*<<< orphan*/  kld_sx ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  linker_files ; 
 scalar_t__ loadcnt ; 
 void* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

linker_file_t
FUNC9(const char *pathname, linker_class_t lc)
{
	linker_file_t lf;
	const char *filename;

	if (!cold)
		FUNC8(&kld_sx, SA_XLOCKED);
	filename = FUNC6(pathname);

	FUNC0(FILE, ("linker_make_file: new file, filename='%s' for pathname='%s'\n", filename, pathname));
	lf = (linker_file_t)FUNC5((kobj_class_t)lc, M_LINKER, M_WAITOK);
	if (lf == NULL)
		return (NULL);
	lf->ctors_addr = 0;
	lf->ctors_size = 0;
	lf->refs = 1;
	lf->userrefs = 0;
	lf->flags = 0;
	lf->filename = FUNC7(filename, M_LINKER);
	lf->pathname = FUNC7(pathname, M_LINKER);
	FUNC1(lf->id);
	lf->ndeps = 0;
	lf->deps = NULL;
	lf->loadcnt = ++loadcnt;
	FUNC2(&lf->common);
	FUNC3(&lf->modules);
	FUNC4(&linker_files, lf, link);
	return (lf);
}