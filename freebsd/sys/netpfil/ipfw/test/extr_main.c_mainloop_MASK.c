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
struct mbuf {int /*<<< orphan*/  flow_id; } ;
struct dn_queue {int dummy; } ;
struct cfg_s {int loops; int (* enq ) (int /*<<< orphan*/ ,struct dn_queue*,struct mbuf*) ;int /*<<< orphan*/  pending; int /*<<< orphan*/  drop; int /*<<< orphan*/  si; struct mbuf* (* deq ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  dequeue; scalar_t__ can_dequeue; int /*<<< orphan*/  _enqueue; struct mbuf* tosend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 struct dn_queue* FUNC2 (struct cfg_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg_s*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg_s*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg_s*,struct mbuf*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct dn_queue*,struct mbuf*) ; 
 struct mbuf* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct cfg_s *c)
{
	int i;
	struct mbuf *m;

	for (i=0; i < c->loops; i++) {
		/* implement histeresis */
		FUNC4(c);
		FUNC1(3, "loop %d enq %d send %p rx %d",
			i, c->_enqueue, c->tosend, c->can_dequeue);
		if ( (m = c->tosend) ) {
			int ret;
			struct dn_queue *q = FUNC2(c, m->flow_id);
			c->_enqueue++;
			ret = c->enq(c->si, q, m);
			if (ret) {
				FUNC5(c, m);
				FUNC0("loop %d enqueue fail", i );
				/*
				 * XXX do not insist; rather, try dequeue
				 */
				goto do_dequeue;
			} else {
				FUNC3("enqueue ok");
				c->pending++;
				FUNC7(c, m);
			}
		} else if (c->can_dequeue) {
do_dequeue:
			c->dequeue++;
			m = c->deq(c->si);
			if (m) {
				c->pending--;
				FUNC5(c, m);
				c->drop--;	/* compensate */
				FUNC6(c, m);
			} else {
				FUNC0("--- ouch, cannot operate on iteration %d, pending %d", i, c->pending);
				break;
			}
		}
	}
	FUNC1(1, "mainloop ends %d", i);
	return 0;
}