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
struct consdev {int /*<<< orphan*/  cn_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFE_STDHANDLE_CONSOLE ; 
 int /*<<< orphan*/  CN_DEAD ; 
 int /*<<< orphan*/  CN_LOW ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct consdev*,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ conhandle ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct consdev *cp)
{

	conhandle = FUNC1(CFE_STDHANDLE_CONSOLE);
	if (conhandle < 0) {
		cp->cn_pri = CN_DEAD;
		return;
	}

	/* XXX */
	if (bootverbose) {
		char *bootmsg = "Using CFE firmware console.\n";
		int i;

		for (i = 0; i < FUNC2(bootmsg); i++)
			FUNC0(cp, bootmsg[i]);
	}

	cp->cn_pri = CN_LOW;
}