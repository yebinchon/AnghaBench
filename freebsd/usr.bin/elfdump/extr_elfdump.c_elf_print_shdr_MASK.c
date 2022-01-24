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
typedef  scalar_t__ intmax_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  E_MACHINE ; 
 int /*<<< orphan*/  E_SHENTSIZE ; 
 int /*<<< orphan*/  SH_ADDR ; 
 int /*<<< orphan*/  SH_ADDRALIGN ; 
 int /*<<< orphan*/  SH_ENTSIZE ; 
 int /*<<< orphan*/  SH_FLAGS ; 
 int /*<<< orphan*/  SH_INFO ; 
 int /*<<< orphan*/  SH_LINK ; 
 int /*<<< orphan*/  SH_NAME ; 
 int /*<<< orphan*/  SH_OFFSET ; 
 int /*<<< orphan*/  SH_SIZE ; 
 int /*<<< orphan*/  SH_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 
 char** sh_flags ; 
 char* FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ shstrtab ; 

__attribute__((used)) static void
FUNC8(Elf32_Ehdr *e, void *sh)
{
	u_int64_t shentsize;
	u_int64_t shnum;
	u_int64_t name;
	u_int64_t type;
	u_int64_t flags;
	u_int64_t addr;
	u_int64_t offset;
	u_int64_t size;
	u_int64_t shlink;
	u_int64_t info;
	u_int64_t addralign;
	u_int64_t entsize;
	u_int64_t machine;
	void *v;
	int i;

	if (sh == NULL) {
		FUNC6(out, "\nNo section headers\n");
		return;
	}

	machine = FUNC2(e, e, E_MACHINE);
	shentsize = FUNC2(e, e, E_SHENTSIZE);
	shnum = FUNC3(e, sh);
	FUNC6(out, "\nsection header:\n");
	for (i = 0; (u_int64_t)i < shnum; i++) {
		v = (char *)sh + i * shentsize;
		name = FUNC5(e, v, SH_NAME);
		type = FUNC5(e, v, SH_TYPE);
		flags = FUNC5(e, v, SH_FLAGS);
		addr = FUNC0(e, v, SH_ADDR);
		offset = FUNC1(e, v, SH_OFFSET);
		size = FUNC4(e, v, SH_SIZE);
		shlink = FUNC5(e, v, SH_LINK);
		info = FUNC5(e, v, SH_INFO);
		addralign = FUNC4(e, v, SH_ADDRALIGN);
		entsize = FUNC4(e, v, SH_ENTSIZE);
		FUNC6(out, "\n");
		FUNC6(out, "entry: %d\n", i);
		FUNC6(out, "\tsh_name: %ld\n", shstrtab + name);
		FUNC6(out, "\tsh_type: %s\n", FUNC7(machine, type));
		FUNC6(out, "\tsh_flags: %s\n", sh_flags[flags & 0x7]);
		FUNC6(out, "\tsh_addr: %#jx\n", addr);
		FUNC6(out, "\tsh_offset: %jd\n", (intmax_t)offset);
		FUNC6(out, "\tsh_size: %jd\n", (intmax_t)size);
		FUNC6(out, "\tsh_link: %jd\n", (intmax_t)shlink);
		FUNC6(out, "\tsh_info: %jd\n", (intmax_t)info);
		FUNC6(out, "\tsh_addralign: %jd\n", (intmax_t)addralign);
		FUNC6(out, "\tsh_entsize: %jd\n", (intmax_t)entsize);
	}
}