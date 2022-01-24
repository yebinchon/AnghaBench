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
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC2(const char *elem, const char *list)
{
	char *p;
	int len;

	p = FUNC1(list, elem);
	len = FUNC0(elem);

	return (p != NULL &&
	    (p == list || p[-1] == ',') &&
	    (p[len] == '\0' || p[len] == ','));
}