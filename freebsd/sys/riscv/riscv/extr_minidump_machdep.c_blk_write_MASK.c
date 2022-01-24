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
typedef  size_t u_int ;
struct dumperinfo {int /*<<< orphan*/  maxiosize; } ;

/* Variables and functions */
 int ECANCELED ; 
 int EINVAL ; 
 size_t MAXDUMPPGS ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  WD_LASTVAL ; 
 int FUNC1 (struct dumperinfo*) ; 
 int FUNC2 () ; 
 size_t counter ; 
 int FUNC3 (struct dumperinfo*,char*,int /*<<< orphan*/ ,size_t) ; 
 void* dump_va ; 
 int /*<<< orphan*/  dumpsize ; 
 size_t fragsz ; 
 size_t FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 size_t progress ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct dumperinfo *di, char *ptr, vm_paddr_t pa, size_t sz)
{
	size_t len;
	int error, c;
	u_int maxdumpsz;

	maxdumpsz = FUNC4(di->maxiosize, MAXDUMPPGS * PAGE_SIZE);
	if (maxdumpsz == 0)	/* seatbelt */
		maxdumpsz = PAGE_SIZE;
	error = 0;
	if ((sz % PAGE_SIZE) != 0) {
		FUNC5("size not page aligned\n");
		return (EINVAL);
	}
	if (ptr != NULL && pa != 0) {
		FUNC5("cant have both va and pa!\n");
		return (EINVAL);
	}
	if ((((uintptr_t)pa) % PAGE_SIZE) != 0) {
		FUNC5("address not page aligned %#lx\n", (uintptr_t)pa);
		return (EINVAL);
	}
	if (ptr != NULL) {
		/*
		 * If we're doing a virtual dump, flush any
		 * pre-existing pa pages.
		 */
		error = FUNC1(di);
		if (error != 0)
			return (error);
	}
	while (sz) {
		len = maxdumpsz - fragsz;
		if (len > sz)
			len = sz;
		counter += len;
		progress -= len;
		if (counter >> 22) {
			FUNC6(progress, dumpsize);
			counter &= (1 << 22) - 1;
		}

		FUNC7(WD_LASTVAL);

		if (ptr) {
			error = FUNC3(di, ptr, 0, len);
			if (error != 0)
				return (error);
			ptr += len;
			sz -= len;
		} else {
			dump_va = (void *)FUNC0(pa);
			fragsz += len;
			pa += len;
			sz -= len;
			error = FUNC1(di);
			if (error != 0)
				return (error);
		}

		/* Check for user abort */
		c = FUNC2();
		if (c == 0x03)
			return (ECANCELED);
		if (c != -1)
			FUNC5(" (CTRL-C to abort) ");
	}

	return (0);
}