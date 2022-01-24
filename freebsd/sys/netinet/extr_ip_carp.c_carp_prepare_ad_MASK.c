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
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct carp_softc {int sc_counter; scalar_t__ sc_init_counter; } ;
struct carp_header {int /*<<< orphan*/  carp_md; void** carp_counter; } ;
typedef  int /*<<< orphan*/  sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PACKET_TAG_CARP ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct carp_softc**,struct m_tag*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct carp_softc*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  carps_onomem ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct m_tag* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct m_tag*) ; 

__attribute__((used)) static int
FUNC8(struct mbuf *m, struct carp_softc *sc, struct carp_header *ch)
{
	struct m_tag *mtag;

	if (sc->sc_init_counter) {
		/* this could also be seconds since unix epoch */
		sc->sc_counter = FUNC1();
		sc->sc_counter = sc->sc_counter << 32;
		sc->sc_counter += FUNC1();
	} else
		sc->sc_counter++;

	ch->carp_counter[0] = FUNC4((sc->sc_counter>>32)&0xffffffff);
	ch->carp_counter[1] = FUNC4(sc->sc_counter&0xffffffff);

	FUNC3(sc, ch->carp_counter, ch->carp_md);

	/* Tag packet for carp_output */
	if ((mtag = FUNC6(PACKET_TAG_CARP, sizeof(struct carp_softc *),
	    M_NOWAIT)) == NULL) {
		FUNC5(m);
		FUNC0(carps_onomem);
		return (ENOMEM);
	}
	FUNC2(&sc, mtag + 1, sizeof(sc));
	FUNC7(m, mtag);

	return (0);
}