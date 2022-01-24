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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int
FUNC2(const char *name, const char *list_to_check[])
{
	int i;
	for (i = 0; list_to_check[i] != NULL; i++) {
		if (FUNC0(name, list_to_check[i]) == 0) {
			return (1);
		}
	}
	FUNC1("illegal nettype :\'%s\'", name);
	return (0);
}