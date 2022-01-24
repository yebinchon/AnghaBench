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
struct sysinit {scalar_t__ subsystem; scalar_t__ order; int /*<<< orphan*/  udata; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 scalar_t__ SI_SUB_DUMMY ; 
 int /*<<< orphan*/  kld_sx ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,struct sysinit***,struct sysinit***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(linker_file_t lf)
{
	struct sysinit **start, **stop, **sipp, **xipp, *save;

	FUNC0(FILE, ("linker_file_sysinit: calling SYSINITs for %s\n",
	    lf->filename));

	FUNC5(&kld_sx, SA_XLOCKED);

	if (FUNC1(lf, "sysinit_set", &start, &stop, NULL) != 0)
		return;
	/*
	 * Perform a bubble sort of the system initialization objects by
	 * their subsystem (primary key) and order (secondary key).
	 *
	 * Since some things care about execution order, this is the operation
	 * which ensures continued function.
	 */
	for (sipp = start; sipp < stop; sipp++) {
		for (xipp = sipp + 1; xipp < stop; xipp++) {
			if ((*sipp)->subsystem < (*xipp)->subsystem ||
			    ((*sipp)->subsystem == (*xipp)->subsystem &&
			    (*sipp)->order <= (*xipp)->order))
				continue;	/* skip */
			save = *sipp;
			*sipp = *xipp;
			*xipp = save;
		}
	}

	/*
	 * Traverse the (now) ordered list of system initialization tasks.
	 * Perform each task, and continue on to the next task.
	 */
	FUNC7(&kld_sx);
	FUNC2(&Giant);
	for (sipp = start; sipp < stop; sipp++) {
		if ((*sipp)->subsystem == SI_SUB_DUMMY)
			continue;	/* skip dummy task(s) */

		/* Call function */
		(*((*sipp)->func)) ((*sipp)->udata);
	}
	FUNC3(&Giant);
	FUNC6(&kld_sx);
}