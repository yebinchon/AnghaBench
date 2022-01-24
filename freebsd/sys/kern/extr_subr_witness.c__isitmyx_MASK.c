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
struct witness {int w_index; char* w_name; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned char) ; 
 unsigned char FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned char WITNESS_RELATED_MASK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  w_mtx ; 
 unsigned char** w_rmatrix ; 
 int witness_watch ; 

__attribute__((used)) static int
FUNC6(struct witness *w1, struct witness *w2, int rmask, const char *fname)
{
	unsigned char r1, r2;
	int i1, i2;

	i1 = w1->w_index;
	i2 = w2->w_index;
	FUNC2(i1);
	FUNC2(i2);
	r1 = w_rmatrix[i1][i2] & WITNESS_RELATED_MASK;
	r2 = w_rmatrix[i2][i1] & WITNESS_RELATED_MASK;

	/* The flags on one better be the inverse of the flags on the other */
	if (!((FUNC0(r1) == r2 && FUNC1(r2) == r1) ||
	    (FUNC1(r1) == r2 && FUNC0(r2) == r1))) {
		/* Don't squawk if we're potentially racing with an update. */
		if (!FUNC4(&w_mtx))
			return (0);
		FUNC5("%s: rmatrix mismatch between %s (index %d) and %s "
		    "(index %d): w_rmatrix[%d][%d] == %hhx but "
		    "w_rmatrix[%d][%d] == %hhx\n",
		    fname, w1->w_name, i1, w2->w_name, i2, i1, i2, r1,
		    i2, i1, r2);
		FUNC3();
		FUNC5("Witness disabled.\n");
		witness_watch = -1;
	}
	return (r1 & rmask);
}