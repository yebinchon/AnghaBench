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
struct sockbuf {struct mbuf* sb_mbtail; } ;
struct mbuf {int m_flags; struct mbuf* m_next; } ;

/* Variables and functions */
 int M_EOR ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockbuf*,struct mbuf*,struct mbuf*) ; 

void
FUNC6(struct sockbuf *sb, struct mbuf *m0)
{
	struct mbuf *m;

	FUNC2(sb);

	if (m0 == NULL)
		return;
	FUNC3(m0);
	/*
	 * Put the first mbuf on the queue.  Note this permits zero length
	 * records.
	 */
	FUNC4(sb, m0);
	FUNC0(sb);
	FUNC1(sb, m0);
	sb->sb_mbtail = m0;
	m = m0->m_next;
	m0->m_next = 0;
	if (m && (m0->m_flags & M_EOR)) {
		m0->m_flags &= ~M_EOR;
		m->m_flags |= M_EOR;
	}
	/* always call sbcompress() so it can do SBLASTMBUFCHK() */
	FUNC5(sb, m, m0);
}