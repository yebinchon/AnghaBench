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
typedef  int /*<<< orphan*/  typebuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 

__attribute__((used)) static const char *
FUNC1(int type)
{
	static char typebuf[16];

	switch (type) {
	case 1:
		return ("PCI Endpoint Device");
	case 2:
		return ("PCI Sub-Hierarchy");
	case 3:
		return ("IOAPIC");
	case 4:
		return ("HPET");
	default:
		FUNC0(typebuf, sizeof(typebuf), "%d", type);
		return (typebuf);
	}
}