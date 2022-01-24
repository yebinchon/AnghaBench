#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_3__* hi_p ;
struct TYPE_6__ {int /*<<< orphan*/  outFrames; int /*<<< orphan*/  outOctets; int /*<<< orphan*/  inFrames; int /*<<< orphan*/  inOctets; } ;
struct TYPE_7__ {int /*<<< orphan*/  hook; TYPE_2__ stats; struct TYPE_7__* dest; struct TYPE_7__* dup; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 struct mbuf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct mbuf*) ; 
 struct mbuf* FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(hook_p hook, item_p item)
{
	const hi_p hinfo = FUNC3(hook);
	hi_p	h;
	int	error = 0;
	struct mbuf *m;

	m = FUNC0(item);

	/* Update stats on incoming hook */
	hinfo->stats.inOctets += m->m_pkthdr.len;
	hinfo->stats.inFrames++;

	/* Duplicate packet if requried */
	if (hinfo->dup) {
		struct mbuf *m2;

		/* Copy packet (failure will not stop the original)*/
		m2 = FUNC5(m, M_NOWAIT);
		if (m2) {
			/* Deliver duplicate */
			h = hinfo->dup;
			FUNC4(error, h->hook, m2);
			if (error == 0) {
				h->stats.outOctets += m->m_pkthdr.len;
				h->stats.outFrames++;
			}
		}
	}
	/* Deliver frame out destination hook */
	if (hinfo->dest) {
		h = hinfo->dest;
		h->stats.outOctets += m->m_pkthdr.len;
		h->stats.outFrames++;
		FUNC2(error, item, h->hook);
	} else
		FUNC1(item);
	return (error);
}