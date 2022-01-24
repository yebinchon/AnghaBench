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
struct sysctl_oid {int dummy; } ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_4__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  kld_sx ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,struct sysctl_oid***,struct sysctl_oid***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(linker_file_t lf)
{
	struct sysctl_oid **start, **stop, **oidp;

	FUNC0(FILE, ("linker_file_unregister_sysctls: unregistering SYSCTLs"
	    " for %s\n", lf->filename));

	FUNC2(&kld_sx, SA_XLOCKED);

	if (FUNC1(lf, "sysctl_set", &start, &stop, NULL) != 0)
		return;

	FUNC4(&kld_sx);
	FUNC6();
	for (oidp = start; oidp < stop; oidp++)
		FUNC5(*oidp);
	FUNC7();
	FUNC3(&kld_sx);
}