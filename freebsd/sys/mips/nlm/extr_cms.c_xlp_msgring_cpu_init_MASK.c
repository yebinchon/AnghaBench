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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  XLP_PCI_DEVINFO_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(int node, int cpu, int credit)
{
	uint64_t cmspcibase = FUNC1(node);
	uint64_t cmsbase = FUNC2(node);
	int qid, maxqid, src;

	maxqid = FUNC3(cmspcibase, XLP_PCI_DEVINFO_REG0);

	/* cpu credit setup is done only from thread-0 of each core */
	if((cpu % 4) == 0) {
		src = cpu << 2; /* each thread has 4 vc's */
		for (qid = 0; qid < maxqid; qid++)
			FUNC0(cmsbase, qid, src, credit);
	}
}