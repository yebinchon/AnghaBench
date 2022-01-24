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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int /*<<< orphan*/  m_data; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SKIP_FIREWALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 scalar_t__ max_linkhdr ; 

__attribute__((used)) static struct mbuf *
FUNC4(int len, uint16_t fibnum)
{
	struct mbuf *m;

	m = FUNC2(M_NOWAIT, MT_DATA);
	if (m == NULL)
		return (NULL);
#ifdef MAC
	mac_netinet_firewall_send(m);
#endif
	FUNC0(m, fibnum);
	m->m_data += max_linkhdr;
	m->m_flags |= M_SKIP_FIREWALL;
	m->m_len = m->m_pkthdr.len = len;
	FUNC1(m->m_data, len);
	return (m);
}