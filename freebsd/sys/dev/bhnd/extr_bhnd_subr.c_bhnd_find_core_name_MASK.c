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
typedef  int /*<<< orphan*/  uint16_t ;
struct bhnd_core_desc {char const* desc; } ;

/* Variables and functions */
 struct bhnd_core_desc* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC1(uint16_t vendor, uint16_t device)
{
	const struct bhnd_core_desc *desc;
	
	if ((desc = FUNC0(vendor, device)) == NULL)
		return ("unknown");

	return desc->desc;
}