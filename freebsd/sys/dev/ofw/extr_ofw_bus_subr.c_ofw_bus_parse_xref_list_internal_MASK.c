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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcells ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ENOENT ; 
 int ERANGE ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC6(phandle_t node, const char *list_name,
    const char *cells_name, int idx, phandle_t *producer, int *ncells,
    pcell_t **cells)
{
	phandle_t pnode;
	phandle_t *elems;
	uint32_t  pcells;
	int rv, i, j, nelems, cnt;

	elems = NULL;
	nelems = FUNC1(node, list_name,  sizeof(*elems),
	    (void **)&elems);
	if (nelems <= 0)
		return (ENOENT);
	rv = (idx == -1) ? 0 : ENOENT;
	for (i = 0, cnt = 0; i < nelems; i += pcells, cnt++) {
		pnode = elems[i++];
		if (FUNC0(FUNC2(pnode),
		    cells_name, &pcells, sizeof(pcells)) == -1) {
			FUNC5("Missing %s property\n", cells_name);
			rv = ENOENT;
			break;
		}

		if ((i + pcells) > nelems) {
			FUNC5("Invalid %s property value <%d>\n", cells_name,
			    pcells);
			rv = ERANGE;
			break;
		}
		if (cnt == idx) {
			*cells= FUNC4(pcells * sizeof(**cells), M_OFWPROP,
			    M_WAITOK);
			*producer = pnode;
			*ncells = pcells;
			for (j = 0; j < pcells; j++)
				(*cells)[j] = elems[i + j];
			rv = 0;
			break;
		}
	}
	if (elems != NULL)
		FUNC3(elems, M_OFWPROP);
	if (idx == -1 && rv == 0)
		*ncells = cnt;
	return (rv);
}