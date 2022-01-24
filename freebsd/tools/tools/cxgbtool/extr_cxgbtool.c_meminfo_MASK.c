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
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[], int start_arg, const char *iff_name)
{
	int vers;
	struct ch_ifconf_regs regs;

	(void) argc;
	(void) argv;
	(void) start_arg;

	regs.len = REGDUMP_SIZE;
	if ((regs.data = FUNC3(regs.len)) == NULL)
		FUNC1(1, "can't malloc");
	
	if (FUNC0(iff_name, CHELSIO_IFCONF_GETREGS, &regs))
		FUNC1(1, "can't read registers");

	vers = regs.version & 0x3ff;
	if (vers == 3)
		return FUNC4((uint32_t *)regs.data);

	FUNC2(1, "unknown card type %d", vers);
	return 0;
}