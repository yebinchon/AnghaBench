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
 scalar_t__ FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC1(const char *name)
{
	int len;

	if (FUNC0(name, "ada", 3) == 0)
		len = 3;
	else if (FUNC0(name, "ad", 2) == 0)
		len = 2;
	else
		return (0);
	if (name[len] < '0' || name[len] > '9')
		return (0);
	do {
		len++;
	} while (name[len] >= '0' && name[len] <= '9');
	return (len);
}