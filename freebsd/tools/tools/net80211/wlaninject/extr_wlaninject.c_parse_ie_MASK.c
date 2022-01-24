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
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int*) ; 
 int FUNC3 (char*) ; 

int FUNC4(char *str, unsigned char *ie, int len)
{
	int digits = 0;
	char num[3];
	int conv = 0;
	int ielen;

	ielen = FUNC3(str)/2;
	if (ielen < 1 || (FUNC3(str) % 2)) {
		FUNC1("Invalid IE %s\n", str);
		FUNC0(1);
	}

	num[2] = 0;
	while (ielen) {
		num[digits++] = *str;
		str++;
		if (digits == 2) {
			unsigned int x;

			FUNC2(num, "%x", &x);

			if (len <= 0) {
				FUNC1("No space for IE\n");
				FUNC0(1);
			}

			*ie++ = (unsigned char) x;
			len--;
			ielen--;

			/* first char */
			if (conv == 0) {
				if (len == 0) {
					FUNC1("No space for IE\n");
					FUNC0(1);
				}
				*ie++ = (unsigned char) ielen;
				len--;
				conv++;
			}
			conv++;
			digits = 0;
		}
	}

	return conv;
}