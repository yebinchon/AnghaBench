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
struct queue {struct queue* live; } ;
struct params {int /*<<< orphan*/  state; int /*<<< orphan*/  guess; struct queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_WAIT_RELAY ; 
 int /*<<< orphan*/  FUNC0 (struct queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct params*,int /*<<< orphan*/ ) ; 

void FUNC2(struct params *p)
{
	struct queue *q = p->q;
	int i;
	
	FUNC0(q);
	FUNC0(q->live);

	for (i = 0; i < 5; i++) {
		FUNC1(p, p->guess++);
	}
	
	p->state = S_WAIT_RELAY;
}