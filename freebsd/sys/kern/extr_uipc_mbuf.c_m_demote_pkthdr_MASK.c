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
struct pkthdr {int dummy; } ;
struct mbuf {int /*<<< orphan*/  m_pkthdr; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ *) ; 

void
FUNC3(struct mbuf *m)
{

	FUNC0(m);

	FUNC2(m, NULL);
	m->m_flags &= ~M_PKTHDR;
	FUNC1(&m->m_pkthdr, sizeof(struct pkthdr));
}