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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u_int ;
struct mbuf {int /*<<< orphan*/ * m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MCLBYTES ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,scalar_t__) ; 
 scalar_t__ MINCLSIZE ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 

struct mbuf *
FUNC6(uint8_t **frm, int headroom, int pktlen)
{
	struct mbuf *m;
	u_int len;

	/*
	 * NB: we know the mbuf routines will align the data area
	 *     so we don't need to do anything special.
	 */
	len = FUNC5(headroom + pktlen, 4);
	FUNC0(len <= MCLBYTES, ("802.11 mgt frame too large: %u", len));
	if (len < MINCLSIZE) {
		m = FUNC4(M_NOWAIT, MT_DATA);
		/*
		 * Align the data in case additional headers are added.
		 * This should only happen when a WEP header is added
		 * which only happens for shared key authentication mgt
		 * frames which all fit in MHLEN.
		 */
		if (m != NULL)
			FUNC2(m, len);
	} else {
		m = FUNC3(M_NOWAIT, MT_DATA, M_PKTHDR);
		if (m != NULL)
			FUNC1(m, len);
	}
	if (m != NULL) {
		m->m_data += headroom;
		*frm = m->m_data;
	}
	return m;
}