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
typedef  int /*<<< orphan*/  map ;

/* Variables and functions */
 int /*<<< orphan*/  GIO_SCRNMAP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ hex ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(void)
{
	unsigned char map[256];
	size_t i;

	if (FUNC2(0, GIO_SCRNMAP, &map) == -1) {
		FUNC3();
		FUNC0(1, "getting screenmap");
	}
	for (i=0; i<sizeof(map); i++) {
		if (i != 0 && i % 16 == 0)
			FUNC1(stdout, "\n");

		if (hex != 0)
			FUNC1(stdout, " %02x", map[i]);
		else
			FUNC1(stdout, " %03d", map[i]);
	}
	FUNC1(stdout, "\n");

}