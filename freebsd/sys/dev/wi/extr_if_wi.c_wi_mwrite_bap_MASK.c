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
typedef  int u_long ;
struct wi_softc {int /*<<< orphan*/  sc_txbuf; } ;
struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC1 (scalar_t__,int) ; 
 int FUNC2 (struct wi_softc*,int,int,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC3(struct wi_softc *sc, int id, int off, struct mbuf *m0, int totlen)
{
	int error, len;
	struct mbuf *m;

	for (m = m0; m != NULL && totlen > 0; m = m->m_next) {
		if (m->m_len == 0)
			continue;

		len = FUNC1(m->m_len, totlen);

		if (((u_long)m->m_data) % 2 != 0 || len % 2 != 0) {
			FUNC0(m, 0, totlen, (caddr_t)&sc->sc_txbuf);
			return FUNC2(sc, id, off, (caddr_t)&sc->sc_txbuf,
			    totlen);
		}

		if ((error = FUNC2(sc, id, off, m->m_data, len)) != 0)
			return error;

		off += m->m_len;
		totlen -= len;
	}
	return 0;
}