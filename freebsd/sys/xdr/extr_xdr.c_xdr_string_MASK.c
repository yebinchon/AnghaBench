#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
#define  XDR_DECODE 130 
#define  XDR_ENCODE 129 
#define  XDR_FREE 128 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__*) ; 

bool_t
FUNC6(XDR *xdrs, char **cpp, u_int maxsize)
{
	char *sp = *cpp;  /* sp is the actual string pointer */
	u_int size;
	u_int nodesize;
	bool_t ret, allocated = FALSE;

	/*
	 * first deal with the length since xdr strings are counted-strings
	 */
	switch (xdrs->x_op) {
	case XDR_FREE:
		if (sp == NULL) {
			return(TRUE);	/* already free */
		}
		/* FALLTHROUGH */
	case XDR_ENCODE:
		size = FUNC3(sp);
		break;
	case XDR_DECODE:
		break;
	}
	if (! FUNC5(xdrs, &size)) {
		return (FALSE);
	}
	if (size > maxsize) {
		return (FALSE);
	}
	nodesize = size + 1;

	/*
	 * now deal with the actual bytes
	 */
	switch (xdrs->x_op) {

	case XDR_DECODE:
		if (nodesize == 0) {
			return (TRUE);
		}
		if (sp == NULL) {
			*cpp = sp = FUNC0(nodesize);
			allocated = TRUE;
		}
		if (sp == NULL) {
			FUNC2("xdr_string: out of memory");
			return (FALSE);
		}
		sp[size] = 0;
		/* FALLTHROUGH */

	case XDR_ENCODE:
		ret = FUNC4(xdrs, sp, size);
		if ((xdrs->x_op == XDR_DECODE) && (ret == FALSE)) {
			if (allocated == TRUE) {
				FUNC1(sp, nodesize);
				*cpp = NULL;
			}
		}
		return (ret);

	case XDR_FREE:
		FUNC1(sp, nodesize);
		*cpp = NULL;
		return (TRUE);
	}
	/* NOTREACHED */
	return (FALSE);
}