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
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

int
FUNC3(char *name, int maxlen)
{
	int size;

	size = 0;
	while (*name != '\0' && size < maxlen - 1) {
		if (!FUNC1((unsigned char)*name) ||
		    !(FUNC0((unsigned char)*name) ||
		    FUNC2((unsigned char)*name))) {
			return (0);
		}
		name++;
		size++;
	}
	*name = '\0';
	return (size > 0);
}