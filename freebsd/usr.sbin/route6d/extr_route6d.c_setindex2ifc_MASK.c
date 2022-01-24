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
struct ifc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ifc** index2ifc ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifc**,int /*<<< orphan*/ ,int) ; 
 int nindex2ifc ; 
 scalar_t__ FUNC3 (struct ifc**,int) ; 

__attribute__((used)) static void
FUNC4(int idx, struct ifc *ifcp)
{
	int n, nsize;
	struct ifc **p;

	if (!index2ifc) {
		nindex2ifc = 5;	/*initial guess*/
		index2ifc = (struct ifc **)
			FUNC1(sizeof(*index2ifc) * nindex2ifc);
		if (index2ifc == NULL) {
			FUNC0("malloc");
			/*NOTREACHED*/
		}
		FUNC2(index2ifc, 0, sizeof(*index2ifc) * nindex2ifc);
	}
	n = nindex2ifc;
	for (nsize = nindex2ifc; nsize <= idx; nsize *= 2)
		;
	if (n != nsize) {
		p = (struct ifc **)FUNC3(index2ifc,
		    sizeof(*index2ifc) * nsize);
		if (p == NULL) {
			FUNC0("realloc");
			/*NOTREACHED*/
		}
		FUNC2(p + n, 0, sizeof(*index2ifc) * (nindex2ifc - n));
		index2ifc = p;
		nindex2ifc = nsize;
	}
	index2ifc[idx] = ifcp;
}