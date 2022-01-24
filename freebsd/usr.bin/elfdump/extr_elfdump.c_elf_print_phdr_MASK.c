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
typedef  scalar_t__ u_int64_t ;
typedef  char* intmax_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  E_PHENTSIZE ; 
 int /*<<< orphan*/  E_PHNUM ; 
 int /*<<< orphan*/  P_ALIGN ; 
 int /*<<< orphan*/  P_FILESZ ; 
 int /*<<< orphan*/  P_FLAGS ; 
 int /*<<< orphan*/  P_MEMSZ ; 
 int /*<<< orphan*/  P_OFFSET ; 
 int /*<<< orphan*/  P_PADDR ; 
 int /*<<< orphan*/  P_TYPE ; 
 int /*<<< orphan*/  P_VADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 
 char** p_flags ; 
 char** p_types ; 

__attribute__((used)) static void
FUNC6(Elf32_Ehdr *e, void *p)
{
	u_int64_t phentsize;
	u_int64_t phnum;
	u_int64_t type;
	u_int64_t offset;
	u_int64_t vaddr;
	u_int64_t paddr;
	u_int64_t filesz;
	u_int64_t memsz;
	u_int64_t flags;
	u_int64_t align;
	void *v;
	int i;

	phentsize = FUNC2(e, e, E_PHENTSIZE);
	phnum = FUNC2(e, e, E_PHNUM);
	FUNC5(out, "\nprogram header:\n");
	for (i = 0; (u_int64_t)i < phnum; i++) {
		v = (char *)p + i * phentsize;
		type = FUNC4(e, v, P_TYPE);
		offset = FUNC1(e, v, P_OFFSET);
		vaddr = FUNC0(e, v, P_VADDR);
		paddr = FUNC0(e, v, P_PADDR);
		filesz = FUNC3(e, v, P_FILESZ);
		memsz = FUNC3(e, v, P_MEMSZ);
		flags = FUNC4(e, v, P_FLAGS);
		align = FUNC3(e, v, P_ALIGN);
		FUNC5(out, "\n");
		FUNC5(out, "entry: %d\n", i);
		FUNC5(out, "\tp_type: %s\n", p_types[type & 0x7]);
		FUNC5(out, "\tp_offset: %s\n", (intmax_t)offset);
		FUNC5(out, "\tp_vaddr: %s\n", (intmax_t)vaddr);
		FUNC5(out, "\tp_paddr: %s\n", (intmax_t)paddr);
		FUNC5(out, "\tp_filesz: %s\n", (intmax_t)filesz);
		FUNC5(out, "\tp_memsz: %s\n", (intmax_t)memsz);
		FUNC5(out, "\tp_flags: %s\n", p_flags[flags]);
		FUNC5(out, "\tp_align: %s\n", (intmax_t)align);
	}
}