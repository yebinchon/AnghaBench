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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  me2 ;
typedef  int /*<<< orphan*/  me1 ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*,char const*,int*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,int,int,...) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void
FUNC8(device_t dev, device_t child, const char *name, int *unitp)
{
	int line, unit;
	const char *at;
	char me1[24], me2[32];
	uint8_t b, s, f;
	uint32_t d;

	d = FUNC1(child);
	b = FUNC0(child);
	s = FUNC3(child);
	f = FUNC2(child);
	FUNC6(me1, sizeof(me1), "pci%u:%u:%u", b, s, f);
	FUNC6(me2, sizeof(me2), "pci%u:%u:%u:%u", d, b, s, f);
	line = 0;
	while (FUNC4(&line, name, &unit, "at", NULL) == 0) {
		FUNC5(name, unit, "at", &at);
		if (FUNC7(at, me1) != 0 && FUNC7(at, me2) != 0)
			continue; /* No match, try next candidate */
		*unitp = unit;
		return;
	}
}