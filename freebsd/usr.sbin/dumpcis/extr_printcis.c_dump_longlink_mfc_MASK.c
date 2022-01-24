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
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC2(u_char *p, int len)
{
	u_int i, n = *p++;

	--len;
	for (i = 0; i < n; i++) {
		if (len < 5) {
			FUNC0("\tWrong length for long link MFC tuple\n");
			return;
		}
		FUNC0("\tFunction %d: %s memory, address 0x%x\n",
		       i, (*p ? "common" : "attribute"), FUNC1(p + 1));
		p += 5;
		len -= 5;
	}
}