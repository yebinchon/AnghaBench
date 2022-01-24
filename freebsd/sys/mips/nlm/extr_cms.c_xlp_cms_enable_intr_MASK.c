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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(int node, int cpu, int type, int watermark)
{
	uint64_t cmsbase;
	int i, qid;

	cmsbase = FUNC2(node);

	for (i = 0; i < 4; i++) {
		qid = (i + (cpu * 4)) & 0x7f;
		FUNC0(cmsbase, qid, type, watermark);
		FUNC1(cmsbase, qid, 0x1, 0);
	}
}