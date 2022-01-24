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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 

__attribute__((used)) static int
FUNC1(char *s, int nostar)
{
	int i;
	for (i = 0; s[i] != '\0'; i++) {
		if (nostar == 0 && s[i] == '*' && s[i + 1] == '\0')
			return 1;
		if (!FUNC0((unsigned char)s[i]))
			return (0);
	}
	return (1);
}