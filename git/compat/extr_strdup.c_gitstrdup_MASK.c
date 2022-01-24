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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(const char *s1)
{
	size_t len = FUNC2(s1) + 1;
	char *s2 = FUNC0(len);

	if (s2)
		FUNC1(s2, s1, len);
	return s2;
}