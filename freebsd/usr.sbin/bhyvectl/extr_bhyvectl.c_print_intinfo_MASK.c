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
typedef  int uint64_t ;
typedef  int u_int ;

/* Variables and functions */
 int VM_INTINFO_DEL_ERRCODE ; 
#define  VM_INTINFO_HWINTR 130 
#define  VM_INTINFO_NMI 129 
#define  VM_INTINFO_SWINTR 128 
 int VM_INTINFO_TYPE ; 
 int VM_INTINFO_VALID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *banner, uint64_t info)
{
	int type;

	FUNC1("%s:\t", banner);
	if (info & VM_INTINFO_VALID) {
		type = info & VM_INTINFO_TYPE;
		switch (type) {
		case VM_INTINFO_HWINTR:
			FUNC1("extint");
			break;
		case VM_INTINFO_NMI:
			FUNC1("nmi");
			break;
		case VM_INTINFO_SWINTR:
			FUNC1("swint");
			break;
		default:
			FUNC1("exception");
			break;
		}
		FUNC1(" vector %d", (int)FUNC0(info));
		if (info & VM_INTINFO_DEL_ERRCODE)
			FUNC1(" errcode %#x", (u_int)(info >> 32));
	} else {
		FUNC1("n/a");
	}
	FUNC1("\n");
}