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
struct sockbuf {int sb_flags; int sb_ccc; int sb_acc; int sb_ctl; struct mbuf* sb_mbtail; struct mbuf* sb_mb; int /*<<< orphan*/ * sb_fnrdy; struct mbuf* sb_lastrecord; } ;
struct mbuf {int m_flags; int m_len; scalar_t__ m_type; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MCLBYTES ; 
 int MLEN ; 
 scalar_t__ MT_DATA ; 
 scalar_t__ MT_OOBDATA ; 
 int M_EOR ; 
 int M_NOMAP ; 
 int M_NOTREADY ; 
 int FUNC1 (struct mbuf*) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*) ; 
 int SB_NOCOALESCE ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sockbuf*,struct mbuf*) ; 

void
FUNC11(struct sockbuf *sb, struct mbuf *m, struct mbuf *n)
{
	int eor = 0;
	struct mbuf *o;

	FUNC4(sb);

	while (m) {
		eor |= m->m_flags & M_EOR;
		if (m->m_len == 0 &&
		    (eor == 0 ||
		     (((o = m->m_next) || (o = n)) &&
		      o->m_type == m->m_type))) {
			if (sb->sb_lastrecord == m)
				sb->sb_lastrecord = m->m_next;
			m = FUNC6(m);
			continue;
		}
		if (n && (n->m_flags & M_EOR) == 0 &&
		    FUNC2(n) &&
		    ((sb->sb_flags & SB_NOCOALESCE) == 0) &&
		    !(m->m_flags & M_NOTREADY) &&
		    !(n->m_flags & (M_NOTREADY | M_NOMAP)) &&
		    !FUNC8(m) &&
		    !FUNC8(n) &&
		    m->m_len <= MCLBYTES / 4 && /* XXX: Don't copy too much */
		    m->m_len <= FUNC1(n) &&
		    n->m_type == m->m_type) {
			FUNC5(m, 0, m->m_len, FUNC9(n, n->m_len));
			n->m_len += m->m_len;
			sb->sb_ccc += m->m_len;
			if (sb->sb_fnrdy == NULL)
				sb->sb_acc += m->m_len;
			if (m->m_type != MT_DATA && m->m_type != MT_OOBDATA)
				/* XXX: Probably don't need.*/
				sb->sb_ctl += m->m_len;
			m = FUNC6(m);
			continue;
		}
		if (m->m_len <= MLEN && (m->m_flags & M_NOMAP) &&
		    (m->m_flags & M_NOTREADY) == 0 &&
		    !FUNC8(m))
			(void)FUNC7(m);
		if (n)
			n->m_next = m;
		else
			sb->sb_mb = m;
		sb->sb_mbtail = m;
		FUNC10(sb, m);
		n = m;
		m->m_flags &= ~M_EOR;
		m = m->m_next;
		n->m_next = 0;
	}
	if (eor) {
		FUNC0(n != NULL, ("sbcompress: eor && n == NULL"));
		n->m_flags |= eor;
	}
	FUNC3(sb);
}