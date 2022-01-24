#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kaddr ;
typedef  int /*<<< orphan*/  intrcntlen ;
struct TYPE_2__ {scalar_t__ n_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  X_INTRCNT ; 
 size_t X_NINTRCNT ; 
 int /*<<< orphan*/  X_SINTRCNT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * kd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t,unsigned long*,size_t) ; 
 unsigned long* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (char*,unsigned long*,size_t*) ; 
 TYPE_1__* namelist ; 
 unsigned long* FUNC5 (unsigned long*,size_t) ; 

__attribute__((used)) static unsigned int
FUNC6(unsigned long **intrcnts)
{
	size_t intrcntlen;
	uintptr_t kaddr;

	if (kd != NULL) {
		FUNC1(X_SINTRCNT, &intrcntlen, sizeof(intrcntlen));
		if ((*intrcnts = FUNC3(intrcntlen)) == NULL)
			FUNC0(1, "malloc()");
		if (namelist[X_NINTRCNT].n_type == 0)
			FUNC1(X_INTRCNT, *intrcnts, intrcntlen);
		else {
			FUNC1(X_INTRCNT, &kaddr, sizeof(kaddr));
			FUNC2(kaddr, *intrcnts, intrcntlen);
		}
	} else {
		for (*intrcnts = NULL, intrcntlen = 1024; ; intrcntlen *= 2) {
			*intrcnts = FUNC5(*intrcnts, intrcntlen);
			if (*intrcnts == NULL)
				FUNC0(1, "reallocf()");
			if (FUNC4("hw.intrcnt", *intrcnts, &intrcntlen) == 0)
				break;
		}
	}

	return (intrcntlen / sizeof(unsigned long));
}