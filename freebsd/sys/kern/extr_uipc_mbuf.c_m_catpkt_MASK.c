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
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mbuf *m, struct mbuf *n)
{

	FUNC0(m);
	FUNC0(n);

	m->m_pkthdr.len += n->m_pkthdr.len;
	FUNC2(n, 1, 0);

	FUNC1(m, n);
}