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
typedef  int u_int ;

/* Variables and functions */
 int CPUID_TYPE_CORE ; 
 int CPUID_TYPE_SMT ; 
 int core_id_shift ; 
 int /*<<< orphan*/  FUNC0 (int,int,int*) ; 
 int pkg_id_shift ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{
	u_int p[4];
	int bits;
	int type;
	int i;

	/* Fall back if CPU leaf 11 doesn't really exist. */
	FUNC0(0x0b, 0, p);
	if (p[1] == 0) {
		FUNC2();
		return;
	}

	/* We only support three levels for now. */
	for (i = 0; ; i++) {
		FUNC0(0x0b, i, p);

		bits = p[0] & 0x1f;
		type = (p[2] >> 8) & 0xff;

		if (type == 0)
			break;

		/* TODO: check for duplicate (re-)assignment */
		if (type == CPUID_TYPE_SMT)
			core_id_shift = bits;
		else if (type == CPUID_TYPE_CORE)
			pkg_id_shift = bits;
		else
			FUNC1("unknown CPU level type %d\n", type);
	}

	if (pkg_id_shift < core_id_shift) {
		FUNC1("WARNING: core covers more APIC IDs than a package\n");
		core_id_shift = pkg_id_shift;
	}
}