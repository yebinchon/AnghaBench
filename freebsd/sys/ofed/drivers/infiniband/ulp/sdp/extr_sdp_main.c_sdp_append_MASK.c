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
struct sockbuf {struct mbuf* sb_mbtail; struct mbuf* sb_sndptr; struct mbuf* sb_lastrecord; struct mbuf* sb_mb; } ;
struct sdp_sock {scalar_t__ xmit_size_goal; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {int m_flags; struct mbuf* m_next; struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_PKTHDR ; 
 int M_PUSH ; 
 int M_URG ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*) ; 
 scalar_t__ SDP_HEAD_SIZE ; 
 int SDP_MAX_SEND_SGES ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockbuf*,struct mbuf*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC8(struct sdp_sock *ssk, struct sockbuf *sb, struct mbuf *mb, int cnt)
{
	struct mbuf *n;
	int ncnt;

	FUNC3(sb);
	FUNC2(sb);
	FUNC0(mb->m_flags & M_PKTHDR,
		("sdp_append: %p Missing packet header.\n", mb));
	n = sb->sb_lastrecord;
	/*
	 * If the queue is empty just set all pointers and proceed.
	 */
	if (n == NULL) {
		sb->sb_lastrecord = sb->sb_mb = sb->sb_sndptr = mb;
		for (; mb; mb = mb->m_next) {
	                sb->sb_mbtail = mb;
			FUNC6(sb, mb);
		}
		return;
	}
	/*
	 * Count the number of mbufs in the current tail.
	 */
	for (ncnt = 0; n->m_next; n = n->m_next)
		ncnt++;
	n = sb->sb_lastrecord;
	/*
	 * If the two chains can fit in a single sdp packet and
	 * the last record has not been sent yet (WRITABLE) coalesce
	 * them.  The lastrecord remains the same but we must strip the
	 * packet header and then let sbcompress do the hard part.
	 */
	if (FUNC1(n) && ncnt + cnt < SDP_MAX_SEND_SGES &&
	    n->m_pkthdr.len + mb->m_pkthdr.len - SDP_HEAD_SIZE <
	    ssk->xmit_size_goal) {
		FUNC4(mb, SDP_HEAD_SIZE);
		n->m_pkthdr.len += mb->m_pkthdr.len;
		n->m_flags |= mb->m_flags & (M_PUSH | M_URG);
		FUNC5(mb, 1, 0);
		FUNC7(sb, mb, sb->sb_mbtail);
		return;
	}
	/*
	 * Not compressible, just append to the end and adjust counters.
	 */
	sb->sb_lastrecord->m_flags |= M_PUSH;
	sb->sb_lastrecord->m_nextpkt = mb;
	sb->sb_lastrecord = mb;
	if (sb->sb_sndptr == NULL)
		sb->sb_sndptr = mb;
	for (; mb; mb = mb->m_next) {
		sb->sb_mbtail = mb;
		FUNC6(sb, mb);
	}
}