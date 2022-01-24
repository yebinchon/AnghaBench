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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,unsigned char) ; 

__attribute__((used)) static char *
FUNC3(const char *bin, size_t bin_len)
{
	unsigned char *hex, *tmp, ch;
	size_t hex_len;
	size_t i;

	hex_len = bin_len * 2 + 1; /* +1 for '\0'. */
	hex = FUNC1(hex_len);
	if (hex == NULL)
		FUNC0(1, "malloc");

	tmp = hex;
	for (i = 0; i < bin_len; i++) {
		ch = bin[i];
		tmp += FUNC2(tmp, "%02x", ch);
	}

	return (hex);
}