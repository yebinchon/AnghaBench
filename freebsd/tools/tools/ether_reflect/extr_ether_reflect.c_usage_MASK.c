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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char* message) {
	if (message != NULL)
		FUNC1 ("error: %s\n", message);
	FUNC1("usage: ether_reflect -i interface -e ethertype "
	       "-a address -t timeout -p -d\n");
	FUNC0(1);
}