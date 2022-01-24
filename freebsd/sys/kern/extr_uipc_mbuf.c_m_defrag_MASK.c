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
struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; int m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/ * m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MCLBYTES ; 
 int MHLEN ; 
 int MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int M_PKTHDR ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int,int,int /*<<< orphan*/ ) ; 
 int m_defragbytes ; 
 int /*<<< orphan*/  m_defragfailure ; 
 int /*<<< orphan*/  m_defragpackets ; 
 scalar_t__ m_defragrandomfailures ; 
 int /*<<< orphan*/  m_defraguseless ; 
 scalar_t__ FUNC4 (struct mbuf*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct mbuf* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC11(struct mbuf *m0, int how)
{
	struct mbuf *m_new = NULL, *m_final = NULL;
	int progress = 0, length;

	FUNC0(how);
	if (!(m0->m_flags & M_PKTHDR))
		return (m0);

	FUNC5(m0); /* Needed sanity check */

#ifdef MBUF_STRESS_TEST
	if (m_defragrandomfailures) {
		int temp = arc4random() & 0xff;
		if (temp == 0xba)
			goto nospace;
	}
#endif

	if (m0->m_pkthdr.len > MHLEN)
		m_final = FUNC8(how, MT_DATA, M_PKTHDR);
	else
		m_final = FUNC9(how, MT_DATA);

	if (m_final == NULL)
		goto nospace;

	if (FUNC4(m_final, m0, how) == 0)
		goto nospace;

	m_new = m_final;

	while (progress < m0->m_pkthdr.len) {
		length = m0->m_pkthdr.len - progress;
		if (length > MCLBYTES)
			length = MCLBYTES;

		if (m_new == NULL) {
			if (length > MLEN)
				m_new = FUNC8(how, MT_DATA, 0);
			else
				m_new = FUNC7(how, MT_DATA);
			if (m_new == NULL)
				goto nospace;
		}

		FUNC3(m0, progress, length, FUNC10(m_new, caddr_t));
		progress += length;
		m_new->m_len = length;
		if (m_new != m_final)
			FUNC2(m_final, m_new);
		m_new = NULL;
	}
#ifdef MBUF_STRESS_TEST
	if (m0->m_next == NULL)
		m_defraguseless++;
#endif
	FUNC6(m0);
	m0 = m_final;
#ifdef MBUF_STRESS_TEST
	m_defragpackets++;
	m_defragbytes += m0->m_pkthdr.len;
#endif
	return (m0);
nospace:
#ifdef MBUF_STRESS_TEST
	m_defragfailure++;
#endif
	if (m_final)
		FUNC6(m_final);
	return (NULL);
}