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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 

int
FUNC4(phandle_t node, const char *list_name,
    const char *name, int *idx)
{
	char *elems;
	int rv, i, cnt, nelems;

	elems = NULL;
	nelems = FUNC0(node, list_name, (void **)&elems);
	if (nelems <= 0)
		return (ENOENT);

	rv = ENOENT;
	for (i = 0, cnt = 0; i < nelems; cnt++) {
		if (FUNC2(elems + i, name) == 0) {
			*idx = cnt;
			rv = 0;
			break;
		}
		i += FUNC3(elems + i) + 1;
	}

	if (elems != NULL)
		FUNC1(elems, M_OFWPROP);
	return (rv);
}