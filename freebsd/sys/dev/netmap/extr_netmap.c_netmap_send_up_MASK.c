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
struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int NM_DEBUG_HOST ; 
 struct mbuf* FUNC1 (struct mbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbq*) ; 
 int netmap_debug ; 
 struct mbuf* FUNC3 (struct ifnet*,struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *dst, struct mbq *q)
{
	struct mbuf *m;
	struct mbuf *head = NULL, *prev = NULL;

	/* Send packets up, outside the lock; head/prev machinery
	 * is only useful for Windows. */
	while ((m = FUNC1(q)) != NULL) {
		if (netmap_debug & NM_DEBUG_HOST)
			FUNC4("sending up pkt %p size %d", m, FUNC0(m));
		prev = FUNC3(dst, m, prev);
		if (head == NULL)
			head = prev;
	}
	if (head)
		FUNC3(dst, NULL, head);
	FUNC2(q);
}