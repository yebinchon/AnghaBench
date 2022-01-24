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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ USB_QUIRK_MAX ; 
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 
 char* FUNC1 (scalar_t__) ; 

__attribute__((used)) static uint16_t
FUNC2(const char *str, size_t len)
{
	const char *quirk;
	uint16_t x;

	for (x = 0; x != USB_QUIRK_MAX; x++) {
		quirk = FUNC1(x);
		if (FUNC0(str, quirk, len) == 0 &&
		    quirk[len] == 0)
			break;
	}
	return (x);
}