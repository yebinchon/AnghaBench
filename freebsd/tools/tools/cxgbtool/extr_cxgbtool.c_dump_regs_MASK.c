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
typedef  int /*<<< orphan*/  uint32_t ;
struct ch_ifconf_regs {int version; int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_IFCONF_GETREGS ; 
 int /*<<< orphan*/  REGDUMP_SIZE ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,struct ch_ifconf_regs*) ; 
 int FUNC1 (int,char**,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char**,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,char**,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,char**,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(int argc, char *argv[], int start_arg, const char *iff_name)
{
	int vers, revision, is_pcie;
	struct ch_ifconf_regs regs;

	regs.len = REGDUMP_SIZE;

	/* XXX: This is never freed.  Looks like we don't care. */
	if ((regs.data = FUNC7(regs.len)) == NULL)
		FUNC5(1, "can't malloc");

	if (FUNC0(iff_name, CHELSIO_IFCONF_GETREGS, &regs))
		FUNC5(1, "can't read registers");

	vers = regs.version & 0x3ff;
	revision = (regs.version >> 10) & 0x3f;
	is_pcie = (regs.version & 0x80000000) != 0;

	if (vers <= 2)
		return FUNC1(argc, argv, start_arg, (uint32_t *)regs.data);
#if defined(CONFIG_T3_REGS)
	if (vers == 3) {
		if (revision == 0)
			return dump_regs_t3(argc, argv, start_arg,
					    (uint32_t *)regs.data, is_pcie);
		if (revision == 2 || revision == 3)
			return dump_regs_t3b(argc, argv, start_arg,
					     (uint32_t *)regs.data, is_pcie);
		if (revision == 4)
			return dump_regs_t3c(argc, argv, start_arg,
			    		     (uint32_t *)regs.data, is_pcie);
	}
#endif
	FUNC6(1, "unknown card type %d.%d", vers, revision);
	return 0;
}