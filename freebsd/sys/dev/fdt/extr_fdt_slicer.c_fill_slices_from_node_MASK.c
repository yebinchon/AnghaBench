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
typedef  scalar_t__ u_long ;
struct flash_slice {char* label; int flags; scalar_t__ size; scalar_t__ base; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 int FLASH_SLICES_FLAG_NONE ; 
 int FLASH_SLICES_FLAG_RO ; 
 int FLASH_SLICES_MAX_NUM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(phandle_t node, struct flash_slice *slices, int *count)
{
	char *label;
	phandle_t child;
	u_long base, size;
	int flags, i;
	ssize_t nmlen;

	i = 0;
	for (child = FUNC0(node); child != 0; child = FUNC3(child)) {
		flags = FLASH_SLICES_FLAG_NONE;

		/* Nodes with a compatible property are not slices. */
		if (FUNC2(child, "compatible"))
			continue;

		if (i == FLASH_SLICES_MAX_NUM) {
			FUNC4("not enough buffer for slice i=%d\n", i);
			break;
		}

		/* Retrieve start and size of the slice. */
		if (FUNC5(child, &base, &size) != 0) {
			FUNC4("error during processing reg property, i=%d\n",
			    i);
			continue;
		}

		if (size == 0) {
			FUNC4("slice i=%d with no size\n", i);
			continue;
		}

		/* Retrieve label. */
		nmlen = FUNC1(child, "label", (void **)&label);
		if (nmlen <= 0) {
			/* Use node name if no label defined */
			nmlen = FUNC1(child, "name", (void **)&label);
			if (nmlen <= 0) {
				FUNC4("slice i=%d with no name\n", i);
				label = NULL;
			}
		}

		if (FUNC2(child, "read-only"))
			flags |= FLASH_SLICES_FLAG_RO;

		/* Fill slice entry data. */
		slices[i].base = base;
		slices[i].size = size;
		slices[i].label = label;
		slices[i].flags = flags;
		i++;
	}

	*count = i;
	return (0);
}