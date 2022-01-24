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
typedef  scalar_t__ uintmax_t ;
struct numa_mem_region {scalar_t__ mr_domain; scalar_t__ mr_size; scalar_t__ mr_start; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,char*,int) ; 
 int FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int FUNC6 (scalar_t__,char*,struct numa_mem_region*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC10(struct numa_mem_region *memp, int *memsz)
{
	phandle_t phandle;
	int res, count, msz;
	char name[31];
	cell_t associativity[5];
	struct numa_mem_region *curmemp;

	msz = 0;
	/*
	 * Get memory from all the /memory nodes.
	 */
	for (phandle = FUNC1(FUNC5(0)); phandle != 0;
	    phandle = FUNC5(phandle)) {
		if (FUNC3(phandle, "name", name, sizeof(name)) <= 0)
			continue;
		if (FUNC9(name, "memory@", FUNC8("memory@")) != 0)
			continue;

		count = FUNC6(phandle, "reg", &memp[msz]);
		if (count == 0)
			continue;
		curmemp = &memp[msz];
		res = FUNC4(phandle, "ibm,associativity");
		if (res <= 0)
			continue;
		FUNC0(count == 1);
		FUNC2(phandle, "ibm,associativity",
			associativity, res);
		curmemp->mr_domain = associativity[3];
		if (bootverbose)
			FUNC7("%s %#jx-%#jx domain(%ju)\n",
			    name, (uintmax_t)curmemp->mr_start,
			    (uintmax_t)curmemp->mr_start + curmemp->mr_size,
			    (uintmax_t)curmemp->mr_domain);
		msz += count;
	}
	*memsz = msz;
}