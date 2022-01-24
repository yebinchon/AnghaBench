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
typedef  int u_long ;

/* Variables and functions */
 int NBUCKETS ; 
 int NOPS ; 
 int NSIZE ; 
 int** foo ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 () ; 
 int* FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(int argc, char **argv) 
{
    u_long i,j,k;
    
    if (argc > 1) NOPS     = FUNC7(argv[1],0,0);
    if (argc > 2) NBUCKETS = FUNC7(argv[2],0,0);
    if (argc > 3) NSIZE	   = FUNC7(argv[3],0,0);
    FUNC3("BRK(0)=%p ", FUNC6(0));
    foo = FUNC1(sizeof(*foo) * NBUCKETS);
    FUNC2(foo, 0, sizeof(*foo) * NBUCKETS);
    for (i = 1; i <= 4096; i *= 2) {
        for (j = 0; j < 40960/i && j < NBUCKETS; j++) {
	    foo[j] = FUNC1(i);
        }
        for (j = 0; j < 40960/i && j < NBUCKETS; j++) {
	    FUNC0(foo[j]);
	    foo[j] = NULL;
        }
    }

    for (i = 0; i < NOPS; i++) {
	j = FUNC4() % NBUCKETS;
	k = FUNC4() % NSIZE;
	foo[j] = FUNC5(foo[j], k & 1 ? 0 : k);
	if (k & 1 || k == 0) {
		/*
		 * Workaround because realloc return bogus pointer rather than
		 * NULL if passed zero length.
		 */
		foo[j] = NULL;
	}
	if (foo[j])
	    foo[j][0] = 1;
    }
    FUNC3("BRK(1)=%p ", FUNC6(0));
    for (j = 0; j < NBUCKETS; j++) {
	if (foo[j]) {
	    FUNC0(foo[j]);
	    foo[j] = NULL;
	}
    }
    FUNC3("BRK(2)=%p NOPS=%lu NBUCKETS=%lu NSIZE=%lu\n",
	FUNC6(0), NOPS, NBUCKETS, NSIZE);
    return 0;
}