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
struct mem_region {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (struct mem_region*,int) ; 
 int FUNC7 (struct mem_region*,int) ; 
 int FUNC8 (struct mem_region*,int) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (scalar_t__,char*,struct mem_region*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

void
FUNC13(struct mem_region *memp, int *memsz,
		struct mem_region *availp, int *availsz)
{
	phandle_t phandle;
	int asz, msz;
	int res;
	char name[31];

	asz = msz = 0;

	/*
	 * Get memory from all the /memory nodes.
	 */
	for (phandle = FUNC0(FUNC5(0)); phandle != 0;
	    phandle = FUNC5(phandle)) {
		if (FUNC2(phandle, "name", name, sizeof(name)) <= 0)
			continue;
		if (FUNC12(name, "memory", sizeof(name)) != 0 &&
		    FUNC12(name, "memory@", FUNC11("memory@")) != 0)
			continue;

		res = FUNC10(phandle, "reg", &memp[msz]);
		msz += res;

		/*
		 * On POWER9 Systems we might have both linux,usable-memory and
		 * reg properties.  'reg' denotes all available memory, but we
		 * must use 'linux,usable-memory', a subset, as some memory
		 * regions are reserved for NVLink.
		 */
		if (FUNC3(phandle, "linux,usable-memory") >= 0)
			res = FUNC10(phandle, "linux,usable-memory",
			    &availp[asz]);
		else if (FUNC3(phandle, "available") >= 0)
			res = FUNC10(phandle, "available",
			    &availp[asz]);
		else
			res = FUNC10(phandle, "reg", &availp[asz]);
		asz += res;
	}

#ifdef FDT
	phandle = OF_finddevice("/chosen");
	if (OF_hasprop(phandle, "fdtmemreserv"))
		asz = excise_fdt_reserved(availp, asz);

	/* If the kernel is being loaded through kexec, initrd region is listed
	 * in /chosen but the region is not marked as reserved, so, we might exclude
	 * it here.
	 */
	if (OF_hasprop(phandle, "linux,initrd-start"))
		asz = excise_initrd_region(availp, asz);
#endif

#ifdef POWERNV
	if (opal_check() == 0)
		asz = excise_msi_region(availp, asz);
#endif

	*memsz = msz;
	*availsz = asz;
}