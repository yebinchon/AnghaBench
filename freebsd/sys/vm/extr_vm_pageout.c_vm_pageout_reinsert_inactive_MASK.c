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
typedef  int /*<<< orphan*/ * vm_page_t ;
struct vm_pagequeue {int dummy; } ;
struct vm_batchqueue {int dummy; } ;
struct scan_state {struct vm_pagequeue* pq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_batchqueue*) ; 
 scalar_t__ FUNC1 (struct vm_batchqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct vm_batchqueue*) ; 
 scalar_t__ FUNC3 (struct scan_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_pagequeue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_pagequeue*) ; 

__attribute__((used)) static void
FUNC7(struct scan_state *ss, struct vm_batchqueue *bq,
    vm_page_t m)
{
	struct vm_pagequeue *pq;
	int delta;

	delta = 0;
	pq = ss->pq;

	if (m != NULL) {
		if (FUNC1(bq, m))
			return;
		FUNC5(pq);
		delta += FUNC3(ss, m);
	} else
		FUNC5(pq);
	while ((m = FUNC2(bq)) != NULL)
		delta += FUNC3(ss, m);
	FUNC4(pq, delta);
	FUNC6(pq);
	FUNC0(bq);
}