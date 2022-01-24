#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int dummy; } ;
struct mbuf {struct mbuf* m_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int MCLBYTES ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct xnb_pkt*,size_t const,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	const size_t size = 2 * MCLBYTES + 1;
	size_t space = 0;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;
	struct mbuf *m;

	FUNC3(&pkt, size, 0);

	pMbuf = FUNC4(&pkt, xnb_unit_pvt.ifp);

	for (m = pMbuf; m != NULL; m = m->m_next) {
		space += FUNC0(m);
	}
	FUNC1(space >= size);
	FUNC2(&pMbuf);
}