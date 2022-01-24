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
typedef  enum test { ____Placeholder_test } test ;
typedef  enum sort { ____Placeholder_sort } sort ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
#define  INVALID_TEST 132 
#define  PART 131 
#define  RAND 130 
#define  REV 129 
#define  SORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(enum sort s, enum test t, int runs, int elts)
{
	for (int i = 0; i < runs; i++) {
		switch (t) {
		case RAND:
			FUNC2(elts, s);
			break;
		case SORT:
			FUNC4(elts, s);
			break;
		case PART:
			FUNC1(elts, s);
			break;
		case REV:
			FUNC3(elts, s);
			break;
		// Should never be reached
		case INVALID_TEST:
			FUNC0(EX_DATAERR);
		}
	}
}