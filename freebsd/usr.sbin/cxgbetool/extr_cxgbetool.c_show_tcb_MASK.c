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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRNTSTYL_COMP ; 
 int /*<<< orphan*/  TIDTYPE_TCB ; 
 int /*<<< orphan*/  chip_id ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 

__attribute__((used)) static void
FUNC6(uint32_t *buf, uint32_t len)
{
	unsigned char *tcb = (unsigned char *)buf;
	const char *s;
	int i, n = 8;

	while (len) {
		for (i = 0; len && i < n; i++, buf++, len -= 4) {
			s = i ? " " : "";
			FUNC2("%s%08x", s, FUNC0(*buf));
		}
		FUNC2("\n");
	}
	FUNC4(TIDTYPE_TCB, chip_id);
	FUNC3(PRNTSTYL_COMP);
	FUNC5(tcb);
	FUNC1(tcb);
}