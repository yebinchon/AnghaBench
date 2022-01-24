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
struct alq {struct alq* aq_entbuf; int /*<<< orphan*/  aq_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_ALD ; 
 int /*<<< orphan*/  FUNC0 (struct alq*) ; 
 int /*<<< orphan*/  FUNC1 (struct alq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct alq *alq)
{
	/* Drain all pending IO. */
	FUNC0(alq);

	FUNC2(&alq->aq_mtx);
	FUNC1(alq->aq_entbuf, M_ALD);
	FUNC1(alq, M_ALD);
}