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
typedef  scalar_t__ vm_paddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static vm_paddr_t
FUNC4(char **list, char *end)
{
	vm_paddr_t bad;
	char *cp, *pos;

	if (list == NULL || *list == NULL)
		return (0);
	if (**list =='\0') {
		*list = NULL;
		return (0);
	}

	/*
	 * If there's no end pointer then the buffer is coming from
	 * the kenv and we know it's null-terminated.
	 */
	if (end == NULL)
		end = *list + FUNC1(*list);

	/* Ensure that strtoq() won't walk off the end */
	if (*end != '\0') {
		if (*end == '\n' || *end == ' ' || *end  == ',')
			*end = '\0';
		else {
			FUNC0("Blacklist not terminated, skipping\n");
			*list = NULL;
			return (0);
		}
	}

	for (pos = *list; *pos != '\0'; pos = cp) {
		bad = FUNC2(pos, &cp, 0);
		if (*cp == '\0' || *cp == ' ' || *cp == ',' || *cp == '\n') {
			if (bad == 0) {
				if (++cp < end)
					continue;
				else
					break;
			}
		} else
			break;
		if (*cp == '\0' || ++cp >= end)
			*list = NULL;
		else
			*list = cp;
		return (FUNC3(bad));
	}
	FUNC0("Garbage in RAM blacklist, skipping\n");
	*list = NULL;
	return (0);
}