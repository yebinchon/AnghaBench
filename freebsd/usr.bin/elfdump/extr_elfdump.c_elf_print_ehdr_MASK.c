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
typedef  size_t u_int64_t ;
typedef  char* intmax_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  E_CLASS ; 
 int /*<<< orphan*/  E_DATA ; 
 int /*<<< orphan*/  E_EHSIZE ; 
 int /*<<< orphan*/  E_ENTRY ; 
 int /*<<< orphan*/  E_FLAGS ; 
 int /*<<< orphan*/  E_MACHINE ; 
 int /*<<< orphan*/  E_OSABI ; 
 int /*<<< orphan*/  E_PHENTSIZE ; 
 int /*<<< orphan*/  E_PHNUM ; 
 int /*<<< orphan*/  E_PHOFF ; 
 int /*<<< orphan*/  E_SHENTSIZE ; 
 int /*<<< orphan*/  E_SHOFF ; 
 int /*<<< orphan*/  E_TYPE ; 
 int /*<<< orphan*/  E_VERSION ; 
 char* FUNC0 (size_t) ; 
 char** e_types ; 
 char** ei_abis ; 
 char** ei_classes ; 
 char** ei_data ; 
 char** ei_versions ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,void*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,void*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static void
FUNC9(Elf32_Ehdr *e, void *sh)
{
	u_int64_t class;
	u_int64_t data;
	u_int64_t osabi;
	u_int64_t type;
	u_int64_t machine;
	u_int64_t version;
	u_int64_t entry;
	u_int64_t phoff;
	u_int64_t shoff;
	u_int64_t flags;
	u_int64_t ehsize;
	u_int64_t phentsize;
	u_int64_t phnum;
	u_int64_t shentsize;
	u_int64_t shnum;
	u_int64_t shstrndx;

	class = FUNC2(e, e, E_CLASS);
	data = FUNC2(e, e, E_DATA);
	osabi = FUNC2(e, e, E_OSABI);
	type = FUNC4(e, e, E_TYPE);
	machine = FUNC4(e, e, E_MACHINE);
	version = FUNC7(e, e, E_VERSION);
	entry = FUNC1(e, e, E_ENTRY);
	phoff = FUNC3(e, e, E_PHOFF);
	shoff = FUNC3(e, e, E_SHOFF);
	flags = FUNC7(e, e, E_FLAGS);
	ehsize = FUNC4(e, e, E_EHSIZE);
	phentsize = FUNC4(e, e, E_PHENTSIZE);
	phnum = FUNC4(e, e, E_PHNUM);
	shentsize = FUNC4(e, e, E_SHENTSIZE);
	FUNC8(out, "\nelf header:\n");
	FUNC8(out, "\n");
	FUNC8(out, "\te_ident: %s %s %s\n", ei_classes[class], ei_data[data],
	    ei_abis[osabi]);
	FUNC8(out, "\te_type: %s\n", e_types[type]);
	FUNC8(out, "\te_machine: %s\n", FUNC0(machine));
	FUNC8(out, "\te_version: %s\n", ei_versions[version]);
	FUNC8(out, "\te_entry: %s\n", (intmax_t)entry);
	FUNC8(out, "\te_phoff: %s\n", (intmax_t)phoff);
	FUNC8(out, "\te_shoff: %s\n", (intmax_t)shoff);
	FUNC8(out, "\te_flags: %s\n", (intmax_t)flags);
	FUNC8(out, "\te_ehsize: %s\n", (intmax_t)ehsize);
	FUNC8(out, "\te_phentsize: %s\n", (intmax_t)phentsize);
	FUNC8(out, "\te_phnum: %s\n", (intmax_t)phnum);
	FUNC8(out, "\te_shentsize: %s\n", (intmax_t)shentsize);
	if (sh != NULL) {
		shnum = FUNC5(e, sh);
		shstrndx = FUNC6(e, sh);
		FUNC8(out, "\te_shnum: %s\n", (intmax_t)shnum);
		FUNC8(out, "\te_shstrndx: %s\n", (intmax_t)shstrndx);
	}
}