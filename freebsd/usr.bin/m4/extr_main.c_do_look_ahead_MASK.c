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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 

__attribute__((used)) static int
FUNC3(int t, const char *token)
{
	int i;

	FUNC0((unsigned char)t == (unsigned char)token[0]);

	for (i = 1; *++token; i++) {
		t = FUNC1();
		if (t == EOF || (unsigned char)t != (unsigned char)*token) {
			FUNC2(t);
			while (--i)
				FUNC2(*--token);
			return 0;
		}
	}
	return 1;
}