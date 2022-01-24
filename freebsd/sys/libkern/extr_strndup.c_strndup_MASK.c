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
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 char* FUNC1 (size_t,struct malloc_type*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,size_t) ; 

char *
FUNC3(const char *string, size_t maxlen, struct malloc_type *type)
{
	size_t len;
	char *copy;

	len = FUNC2(string, maxlen) + 1;
	copy = FUNC1(len, type, M_WAITOK);
	FUNC0(string, copy, len);
	copy[len - 1] = '\0';
	return (copy);
}