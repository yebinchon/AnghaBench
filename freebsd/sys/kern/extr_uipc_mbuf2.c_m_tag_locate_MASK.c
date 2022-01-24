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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  tags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {scalar_t__ m_tag_cookie; int m_tag_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,char*) ; 
 struct m_tag* FUNC1 (int /*<<< orphan*/ *) ; 
 struct m_tag* FUNC2 (struct m_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_tag_link ; 

struct m_tag *
FUNC3(struct mbuf *m, uint32_t cookie, int type, struct m_tag *t)
{
	struct m_tag *p;

	FUNC0(m, ("m_tag_locate: null mbuf"));
	if (t == NULL)
		p = FUNC1(&m->m_pkthdr.tags);
	else
		p = FUNC2(t, m_tag_link);
	while (p != NULL) {
		if (p->m_tag_cookie == cookie && p->m_tag_id == type)
			return p;
		p = FUNC2(p, m_tag_link);
	}
	return NULL;
}