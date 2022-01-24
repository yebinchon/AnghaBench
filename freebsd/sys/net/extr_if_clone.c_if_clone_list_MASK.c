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
struct if_clonereq {scalar_t__ ifcr_count; int ifcr_total; char* ifcr_buffer; } ;
struct if_clone {int /*<<< orphan*/  ifc_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct if_clone* FUNC2 (int /*<<< orphan*/ *) ; 
 struct if_clone* FUNC3 (struct if_clone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CLONE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  V_if_cloners ; 
 int V_if_cloners_count ; 
 int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifc_list ; 
 char* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC8(struct if_clonereq *ifcr)
{
	char *buf, *dst, *outbuf = NULL;
	struct if_clone *ifc;
	int buf_count, count, err = 0;

	if (ifcr->ifcr_count < 0)
		return (EINVAL);

	FUNC0();
	/*
	 * Set our internal output buffer size.  We could end up not
	 * reporting a cloner that is added between the unlock and lock
	 * below, but that's not a major problem.  Not caping our
	 * allocation to the number of cloners actually in the system
	 * could be because that would let arbitrary users cause us to
	 * allocate arbitrary amounts of kernel memory.
	 */
	buf_count = (V_if_cloners_count < ifcr->ifcr_count) ?
	    V_if_cloners_count : ifcr->ifcr_count;
	FUNC1();

	outbuf = FUNC6(IFNAMSIZ*buf_count, M_CLONE, M_WAITOK | M_ZERO);

	FUNC0();

	ifcr->ifcr_total = V_if_cloners_count;
	if ((dst = ifcr->ifcr_buffer) == NULL) {
		/* Just asking how many there are. */
		goto done;
	}
	count = (V_if_cloners_count < buf_count) ?
	    V_if_cloners_count : buf_count;

	for (ifc = FUNC2(&V_if_cloners), buf = outbuf;
	    ifc != NULL && count != 0;
	    ifc = FUNC3(ifc, ifc_list), count--, buf += IFNAMSIZ) {
		FUNC7(buf, ifc->ifc_name, IFNAMSIZ);
	}

done:
	FUNC1();
	if (err == 0 && dst != NULL)
		err = FUNC4(outbuf, dst, buf_count*IFNAMSIZ);
	if (outbuf != NULL)
		FUNC5(outbuf, M_CLONE);
	return (err);
}