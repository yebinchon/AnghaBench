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
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 size_t MINCLSIZE ; 
 size_t const FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct xnb_pkt*,size_t const,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	const size_t size = MINCLSIZE;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;

	FUNC3(&pkt, size, 0);

	pMbuf = FUNC4(&pkt, xnb_unit_pvt.ifp);
	FUNC1(FUNC0(pMbuf) >= size);
	FUNC2(&pMbuf);
}