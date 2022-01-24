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

/* Variables and functions */
 int /*<<< orphan*/  NSWAP ; 
 int /*<<< orphan*/  blocksize ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dlen ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  header ; 
 int /*<<< orphan*/  hlen ; 
 int /*<<< orphan*/  kd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvmsw ; 
 int /*<<< orphan*/  kvnsw ; 
 int /*<<< orphan*/  odlen ; 
 int /*<<< orphan*/  okvnsw ; 
 int /*<<< orphan*/  oulen ; 
 int /*<<< orphan*/  pagesize ; 
 int /*<<< orphan*/  ulen ; 

int
FUNC6(void)
{
	static int once = 0;

	if (once)
		return (1);

	header = FUNC3(&hlen, &blocksize);
	pagesize = FUNC4();

	if ((kvnsw = FUNC5(kd, kvmsw, NSWAP, 0)) < 0) {
		FUNC2("systat: kvm_getswapinfo failed");
		return (0);
	}
	okvnsw = kvnsw;

	FUNC0();
	odlen = dlen;
	oulen = ulen;

	once = 1;

	FUNC1(12);

	return (1);
}