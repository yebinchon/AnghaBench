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
typedef  int u_int64_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  SH_ADDRALIGN ; 
 int /*<<< orphan*/  SH_OFFSET ; 
 int /*<<< orphan*/  SH_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static void
FUNC4(Elf32_Ehdr *e, void *sh)
{
	u_int64_t offset;
	u_int64_t addralign;
	u_int64_t size;
	u_int64_t addr;
	void *v;
	int i;

	offset = FUNC1(e, sh, SH_OFFSET);
	addralign = FUNC2(e, sh, SH_ADDRALIGN);
	size = FUNC2(e, sh, SH_SIZE);
	v = (char *)e + offset;
	FUNC3(out, "\nglobal offset table:\n");
	for (i = 0; (u_int64_t)i < size / addralign; i++) {
		addr = FUNC0(e, (char *)v + i * addralign, 0);
		FUNC3(out, "\n");
		FUNC3(out, "entry: %d\n", i);
		FUNC3(out, "\t%#x\n", addr);
	}
}