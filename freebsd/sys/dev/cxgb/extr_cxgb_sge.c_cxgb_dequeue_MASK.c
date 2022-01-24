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
struct sge_qset {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct coalesce_info {int count; int nbytes; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (struct sge_qset*) ; 
 struct mbuf* FUNC1 (struct sge_qset*,int /*<<< orphan*/ ,struct coalesce_info*) ; 
 scalar_t__ FUNC2 (struct sge_qset*) ; 
 int /*<<< orphan*/  coalesce_check ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static struct mbuf *
FUNC4(struct sge_qset *qs)
{
	struct mbuf *m, *m_head, *m_tail;
	struct coalesce_info ci;

	
	if (FUNC2(qs) == 0) 
		return FUNC0(qs);

	m_head = m_tail = NULL;
	ci.count = ci.nbytes = 0;
	do {
		m = FUNC1(qs, coalesce_check, &ci);
		if (m_head == NULL) {
			m_tail = m_head = m;
		} else if (m != NULL) {
			m_tail->m_nextpkt = m;
			m_tail = m;
		}
	} while (m != NULL);
	if (ci.count > 7)
		FUNC3("trying to coalesce %d packets in to one WR", ci.count);
	return (m_head);
}