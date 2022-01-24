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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_GLOBAL_GUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(uint16_t bootnum)
{
	uint32_t attrs;
	size_t size, i, j;
	uint8_t *new, *data;

	if (FUNC0(EFI_GLOBAL_GUID, "BootOrder", &data, &size, &attrs) < 0)
		return;

	new = FUNC4(size);
	if (new == NULL)
		FUNC1(1, "malloc");

	for (j = i = 0; i < size; i += sizeof(uint16_t)) {
		if (FUNC3(data + i) == bootnum)
			continue;
		FUNC5(new + j, data + i, sizeof(uint16_t));
		j += sizeof(uint16_t);
	}
	if (i == j)
		FUNC7("Boot variable %04x not in BootOrder", bootnum);
	else if (FUNC6("BootOrder", new, j) < 0)
		FUNC1(1, "Unable to update BootOrder with new value");
	FUNC2(new);
}