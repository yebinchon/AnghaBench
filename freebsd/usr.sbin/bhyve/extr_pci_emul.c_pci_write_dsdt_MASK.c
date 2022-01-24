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
 int MAXBUSES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(void)
{
	int bus;

	FUNC0(1);
	FUNC1("Name (PICM, 0x00)");
	FUNC1("Method (_PIC, 1, NotSerialized)");
	FUNC1("{");
	FUNC1("  Store (Arg0, PICM)");
	FUNC1("}");
	FUNC1("");
	FUNC1("Scope (_SB)");
	FUNC1("{");
	for (bus = 0; bus < MAXBUSES; bus++)
		FUNC3(bus);
	FUNC1("}");
	FUNC2(1);
}