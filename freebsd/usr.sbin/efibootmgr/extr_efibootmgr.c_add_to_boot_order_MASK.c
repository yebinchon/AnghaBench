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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_GLOBAL_GUID ; 
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(char *bootvar)
{
	size_t size;
	uint32_t attrs;
	uint16_t val;
	uint8_t *data, *new;

	val = FUNC7(&bootvar[4], NULL, 16);

	if (FUNC0(EFI_GLOBAL_GUID, "BootOrder", &data, &size, &attrs) < 0) {
		if (errno == ENOENT) { /* create it and set this bootvar to active */
			size = 0;
			data = NULL;
		} else
			FUNC1(1, "efi_get_variable BootOrder");
	}

	/*
	 * We have BootOrder with the current order
	 * so grow the array by one, add the value
	 * and write the new variable value.
	 */
	size += sizeof(uint16_t);
	new = FUNC4(size);
	if (!new)
		FUNC1(1, "malloc");

	FUNC3(new, val);
	if (size > sizeof(uint16_t))
		FUNC5(new + sizeof(uint16_t), data, size - sizeof(uint16_t));

	if (FUNC6("BootOrder", new, size) < 0)
		FUNC1(1, "set_bootvar");
	FUNC2(new);
}