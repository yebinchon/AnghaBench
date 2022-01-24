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
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char** FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 

int
FUNC5(phandle_t node, const char *list_name,
   const char ***out_array)
{
	char *elems, *tptr;
	const char **array;
	int i, cnt, nelems, len;

	elems = NULL;
	nelems = FUNC0(node, list_name, (void **)&elems);
	if (nelems <= 0)
		return (nelems);

	/* Count number of strings. */
	for (i = 0, cnt = 0; i < nelems; cnt++)
		i += FUNC4(elems + i) + 1;

	/* Allocate space for arrays and all strings. */
	array = FUNC2((cnt + 1) * sizeof(char *) + nelems, M_OFWPROP,
	    M_WAITOK);

	/* Get address of first string. */
	tptr = (char *)(array + cnt + 1);

	/* Copy strings. */
	FUNC3(tptr, elems, nelems);
	FUNC1(elems, M_OFWPROP);

	/* Fill string pointers. */
	for (i = 0, cnt = 0; i < nelems; cnt++) {
		len = FUNC4(tptr) + 1;
		array[cnt] = tptr;
		i += len;
		tptr += len;
	}
	array[cnt] = NULL;
	*out_array = array;

	return (cnt);
}