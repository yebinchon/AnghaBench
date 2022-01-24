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
 scalar_t__ FUNC0 (char const*,char*) ; 
 char const* FUNC1 () ; 

const char *
FUNC2(const char *part_type, const char *fs_type)
{

	if (FUNC0(part_type, "GPT") == 0 && FUNC0(FUNC1(), "UEFI") != 0) {
		if (FUNC0(fs_type, "zfs") == 0)
			return ("/boot/gptzfsboot");
		else
			return ("/boot/gptboot");
	}
	
	/* No partcode except for non-UEFI GPT */
	return (NULL);
}