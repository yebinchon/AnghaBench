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
struct sockbuf {struct mbuf* sb_lastrecord; struct mbuf* sb_mb; } ;
struct mbuf {int m_flags; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int M_EOR ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*,struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int) ; 

void
FUNC5(struct sockbuf *sb, struct mbuf *m, int flags)
{
	struct mbuf *n;

	FUNC1(sb);

	if (m == NULL)
		return;
	FUNC4(m, flags);
	FUNC0(sb);
	n = sb->sb_mb;
	if (n) {
		while (n->m_nextpkt)
			n = n->m_nextpkt;
		do {
			if (n->m_flags & M_EOR) {
				FUNC2(sb, m); /* XXXXXX!!!! */
				return;
			}
		} while (n->m_next && (n = n->m_next));
	} else {
		/*
		 * XXX Would like to simply use sb_mbtail here, but
		 * XXX I need to verify that I won't miss an EOR that
		 * XXX way.
		 */
		if ((n = sb->sb_lastrecord) != NULL) {
			do {
				if (n->m_flags & M_EOR) {
					FUNC2(sb, m); /* XXXXXX!!!! */
					return;
				}
			} while (n->m_next && (n = n->m_next));
		} else {
			/*
			 * If this is the first record in the socket buffer,
			 * it's also the last record.
			 */
			sb->sb_lastrecord = m;
		}
	}
	FUNC3(sb, m, n);
	FUNC0(sb);
}