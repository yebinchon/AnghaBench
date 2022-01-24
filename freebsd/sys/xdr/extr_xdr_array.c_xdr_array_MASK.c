#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* xdrproc_t ) (TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int u_int ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  scalar_t__ bool_t ;
struct TYPE_7__ {int x_op; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int UINT_MAX ; 
#define  XDR_DECODE 130 
#define  XDR_ENCODE 129 
#define  XDR_FREE 128 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 

bool_t
FUNC6(XDR *xdrs,
    caddr_t *addrp,		/* array pointer */
    u_int *sizep,		/* number of elements */
    u_int maxsize,		/* max numberof elements */
    u_int elsize,		/* size in bytes of each element */
    xdrproc_t elproc)		/* xdr routine to handle each element */
{
	u_int i;
	caddr_t target = *addrp;
	u_int c;  /* the actual element count */
	bool_t stat = TRUE;
	u_int nodesize;

	/* like strings, arrays are really counted arrays */
	if (!FUNC5(xdrs, sizep)) {
		return (FALSE);
	}
	c = *sizep;
	if ((c > maxsize || UINT_MAX/elsize < c) &&
	    (xdrs->x_op != XDR_FREE)) {
		return (FALSE);
	}
	nodesize = c * elsize;

	/*
	 * if we are deserializing, we may need to allocate an array.
	 * We also save time by checking for a null array if we are freeing.
	 */
	if (target == NULL)
		switch (xdrs->x_op) {
		case XDR_DECODE:
			if (c == 0)
				return (TRUE);
			*addrp = target = FUNC0(nodesize);
			if (target == NULL) {
				FUNC3("xdr_array: out of memory");
				return (FALSE);
			}
			FUNC2(target, 0, nodesize);
			break;

		case XDR_FREE:
			return (TRUE);

		case XDR_ENCODE:
			break;
	}
	
	/*
	 * now we xdr each element of array
	 */
	for (i = 0; (i < c) && stat; i++) {
		stat = (*elproc)(xdrs, target);
		target += elsize;
	}

	/*
	 * the array may need freeing
	 */
	if (xdrs->x_op == XDR_FREE) {
		FUNC1(*addrp, nodesize);
		*addrp = NULL;
	}
	return (stat);
}