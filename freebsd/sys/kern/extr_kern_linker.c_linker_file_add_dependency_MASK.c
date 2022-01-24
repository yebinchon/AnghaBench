#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* linker_file_t ;
struct TYPE_6__ {int ndeps; int /*<<< orphan*/  filename; struct TYPE_6__** deps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_LINKER ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  kld_sx ; 
 TYPE_1__** FUNC1 (TYPE_1__**,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(linker_file_t file, linker_file_t dep)
{
	linker_file_t *newdeps;

	FUNC2(&kld_sx, SA_XLOCKED);
	file->deps = FUNC1(file->deps, (file->ndeps + 1) * sizeof(*newdeps),
	    M_LINKER, M_WAITOK | M_ZERO);
	file->deps[file->ndeps] = dep;
	file->ndeps++;
	FUNC0(FILE, ("linker_file_add_dependency:"
	    " adding %s as dependency for %s\n", 
	    dep->filename, file->filename));
	return (0);
}