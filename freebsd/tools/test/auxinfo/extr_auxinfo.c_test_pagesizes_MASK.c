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
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (size_t*,int) ; 
 size_t* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(void)
{
	size_t *ps;
	int i, nelem;

	nelem = FUNC1(NULL, 0);
	if (nelem == -1)
		FUNC0(1, "getpagesizes(NULL, 0)");
	ps = FUNC2(nelem * sizeof(size_t));
	if (ps == NULL)
		FUNC0(1, "malloc");
	nelem = FUNC1(ps, nelem);
	if (nelem == -1)
		FUNC0(1, "getpagesizes");
	FUNC3("Supported page sizes:");
	for (i = 0; i < nelem; i++)
		FUNC3(" %jd", (intmax_t)ps[i]);
	FUNC3("\n");
}