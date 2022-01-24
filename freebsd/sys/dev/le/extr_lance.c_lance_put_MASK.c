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
struct mbuf {int m_len; } ;
struct lance_softc {int /*<<< orphan*/  (* sc_zerobuf ) (struct lance_softc*,int,int) ;int /*<<< orphan*/  (* sc_copytobuf ) (struct lance_softc*,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int LEMINSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct lance_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lance_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_softc*,int,int) ; 

int
FUNC5(struct lance_softc *sc, int boff, struct mbuf *m)
{
	struct mbuf *n;
	int len, tlen = 0;

	FUNC0(sc, MA_OWNED);

	for (; m; m = n) {
		len = m->m_len;
		if (len == 0) {
			n = FUNC1(m);
			m = NULL;
			continue;
		}
		(*sc->sc_copytobuf)(sc, FUNC2(m, caddr_t), boff, len);
		boff += len;
		tlen += len;
		n = FUNC1(m);
		m = NULL;
	}
	if (tlen < LEMINSIZE) {
		(*sc->sc_zerobuf)(sc, boff, LEMINSIZE - tlen);
		tlen = LEMINSIZE;
	}
	return (tlen);
}