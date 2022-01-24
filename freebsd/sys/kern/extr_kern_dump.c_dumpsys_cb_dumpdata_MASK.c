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
typedef  size_t vm_paddr_t ;
typedef  char* uintmax_t ;
typedef  size_t uint64_t ;
typedef  size_t u_int ;
struct dumperinfo {size_t maxiosize; } ;
struct dump_pa {size_t pa_size; size_t pa_start; } ;

/* Variables and functions */
 int ECANCELED ; 
 int /*<<< orphan*/  MAXDUMPPGS ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  WD_LASTVAL ; 
 int FUNC1 () ; 
 int FUNC2 (struct dumperinfo*,void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t,void**) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t,void*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct dump_pa *mdp, int seqnr, void *arg)
{
	struct dumperinfo *di = (struct dumperinfo*)arg;
	vm_paddr_t pa;
	void *va;
	uint64_t pgs;
	size_t counter, sz, chunk;
	int c, error;
	u_int maxdumppgs;

	error = 0;	/* catch case in which chunk size is 0 */
	counter = 0;	/* Update twiddle every 16MB */
	va = NULL;
	pgs = mdp->pa_size / PAGE_SIZE;
	pa = mdp->pa_start;
	maxdumppgs = FUNC6(di->maxiosize / PAGE_SIZE, MAXDUMPPGS);
	if (maxdumppgs == 0)	/* seatbelt */
		maxdumppgs = 1;

	FUNC7("  chunk %d: %juMB (%ju pages)", seqnr, (uintmax_t)FUNC0(pgs),
	    (uintmax_t)pgs);

	FUNC5();
	while (pgs) {
		chunk = pgs;
		if (chunk > maxdumppgs)
			chunk = maxdumppgs;
		sz = chunk << PAGE_SHIFT;
		counter += sz;
		if (counter >> 24) {
			FUNC7(" %ju", (uintmax_t)FUNC0(pgs));
			counter &= (1 << 24) - 1;
		}

		FUNC3(pa, chunk, &va);
		FUNC8(WD_LASTVAL);

		error = FUNC2(di, va, 0, sz);
		FUNC4(pa, chunk, va);
		if (error)
			break;
		pgs -= chunk;
		pa += sz;

		/* Check for user abort. */
		c = FUNC1();
		if (c == 0x03)
			return (ECANCELED);
		if (c != -1)
			FUNC7(" (CTRL-C to abort) ");
	}
	FUNC7(" ... %s\n", (error) ? "fail" : "ok");
	return (error);
}