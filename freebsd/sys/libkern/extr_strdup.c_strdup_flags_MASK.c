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
struct malloc_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 char* FUNC1 (size_t,struct malloc_type*,int) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3(const char *string, struct malloc_type *type, int flags)
{
	size_t len;
	char *copy;

	len = FUNC2(string) + 1;
	copy = FUNC1(len, type, flags);
	if (copy == NULL)
		return (NULL);
	FUNC0(string, copy, len);
	return (copy);
}