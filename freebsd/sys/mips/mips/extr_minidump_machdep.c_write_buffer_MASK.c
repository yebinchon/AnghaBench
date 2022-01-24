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
typedef  scalar_t__ u_int ;
struct dumperinfo {scalar_t__ maxiosize; } ;

/* Variables and functions */
 int ECANCELED ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  WD_LASTVAL ; 
 int FUNC0 () ; 
 size_t counter ; 
 int FUNC1 (struct dumperinfo*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  dumpsize ; 
 size_t FUNC2 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t progress ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct dumperinfo *di, char *ptr, size_t sz)
{
	size_t len;
	int error, c;
	u_int maxdumpsz;

	maxdumpsz = di->maxiosize;

	if (maxdumpsz == 0)	/* seatbelt */
		maxdumpsz = PAGE_SIZE;

	error = 0;

	while (sz) {
		len = FUNC2(maxdumpsz, sz);
		counter += len;
		progress -= len;

		if (counter >> 22) {
			FUNC5(progress, dumpsize);
			counter &= (1<<22) - 1;
		}

		FUNC6(WD_LASTVAL);

		if (ptr) {
			error = FUNC1(di, ptr, 0, len);
			if (error)
				return (error);
			ptr += len;
			sz -= len;
		} else {
			FUNC3("pa is not supported");
		}

		/* Check for user abort. */
		c = FUNC0();
		if (c == 0x03)
			return (ECANCELED);
		if (c != -1)
			FUNC4(" (CTRL-C to abort) ");
	}

	return (0);
}