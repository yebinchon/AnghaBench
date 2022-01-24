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
struct TYPE_2__ {int /*<<< orphan*/  tags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,char*) ; 
 struct m_tag* FUNC1 (int /*<<< orphan*/ *) ; 
 struct m_tag* FUNC2 (struct m_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct m_tag*) ; 
 int /*<<< orphan*/  m_tag_link ; 

void
FUNC4(struct mbuf *m, struct m_tag *t)
{
	struct m_tag *p, *q;

	FUNC0(m, ("m_tag_delete_chain: null mbuf"));
	if (t != NULL)
		p = t;
	else
		p = FUNC1(&m->m_pkthdr.tags);
	if (p == NULL)
		return;
	while ((q = FUNC2(p, m_tag_link)) != NULL)
		FUNC3(m, q);
	FUNC3(m, p);
}