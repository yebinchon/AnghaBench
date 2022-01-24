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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; scalar_t__ m_data; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int M_COPYALL ; 
 int M_EXT ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 struct mbuf* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct mbuf*) ; 
 int FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (struct mbuf*,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC10(struct mbuf *m, int off0, int len, int wait)
{
	struct mbuf *n, **np;
	int off = off0;
	struct mbuf *top;
	int copyhdr = 0;

	FUNC0(off >= 0, ("m_copym, negative off %d", off));
	FUNC0(len >= 0, ("m_copym, negative len %d", len));
	FUNC1(wait);
	if (off == 0 && m->m_flags & M_PKTHDR)
		copyhdr = 1;
	while (off > 0) {
		FUNC0(m != NULL, ("m_copym, offset > size of mbuf chain"));
		if (off < m->m_len)
			break;
		off -= m->m_len;
		m = m->m_next;
	}
	np = &top;
	top = NULL;
	while (len > 0) {
		if (m == NULL) {
			FUNC0(len == M_COPYALL,
			    ("m_copym, length > size of mbuf chain"));
			break;
		}
		if (copyhdr)
			n = FUNC6(wait, m->m_type);
		else
			n = FUNC5(wait, m->m_type);
		*np = n;
		if (n == NULL)
			goto nospace;
		if (copyhdr) {
			if (!FUNC3(n, m, wait))
				goto nospace;
			if (len == M_COPYALL)
				n->m_pkthdr.len -= off0;
			else
				n->m_pkthdr.len = len;
			copyhdr = 0;
		}
		n->m_len = FUNC8(len, m->m_len - off);
		if (m->m_flags & M_EXT) {
			n->m_data = m->m_data + off;
			FUNC7(n, m);
		} else
			FUNC2(FUNC9(m, caddr_t)+off, FUNC9(n, caddr_t),
			    (u_int)n->m_len);
		if (len != M_COPYALL)
			len -= n->m_len;
		off = 0;
		m = m->m_next;
		np = &n->m_next;
	}

	return (top);
nospace:
	FUNC4(top);
	return (NULL);
}