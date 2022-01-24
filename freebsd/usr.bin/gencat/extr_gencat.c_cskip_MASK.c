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
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *
FUNC2(char *cptr)
{
	if (!*cptr || FUNC0((unsigned char) *cptr)) {
		FUNC1(cptr, "wasn't expecting a space");
		return (cptr);
	}
	while (*cptr && !FUNC0((unsigned char) *cptr))
		++cptr;
	return (cptr);
}