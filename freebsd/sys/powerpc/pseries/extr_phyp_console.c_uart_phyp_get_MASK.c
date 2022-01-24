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
struct TYPE_2__ {int /*<<< orphan*/ * str; int /*<<< orphan*/ * u64; } ;
struct uart_phyp_softc {size_t inbuflen; scalar_t__ protocol; int /*<<< orphan*/  sc_mtx; TYPE_1__ phyp_inbuf; int /*<<< orphan*/  vtermid; } ;

/* Variables and functions */
 scalar_t__ HVTERMPROT ; 
 int /*<<< orphan*/  H_GET_TERM_CHAR ; 
 int H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct uart_phyp_softc *sc, void *buffer, size_t bufsize)
{
	int err;
	int hdr = 0;

	FUNC3(&sc->sc_mtx);
	if (sc->inbuflen == 0) {
		err = FUNC2(H_GET_TERM_CHAR, sc->vtermid,
		    0, 0, 0, &sc->inbuflen, &sc->phyp_inbuf.u64[0],
		    &sc->phyp_inbuf.u64[1]);
		if (err != H_SUCCESS) {
			FUNC4(&sc->sc_mtx);
			return (-1);
		}
		hdr = 1; 
	}

	if (sc->inbuflen == 0) {
		FUNC4(&sc->sc_mtx);
		return (0);
	}

	if (bufsize > sc->inbuflen)
		bufsize = sc->inbuflen;

	if ((sc->protocol == HVTERMPROT) && (hdr == 1)) {
		sc->inbuflen = sc->inbuflen - 4;
		/* The VTERM protocol has a 4 byte header, skip it here. */
		FUNC1(&sc->phyp_inbuf.str[0], &sc->phyp_inbuf.str[4],
		    sc->inbuflen);
	}

	FUNC0(buffer, sc->phyp_inbuf.str, bufsize);
	sc->inbuflen -= bufsize;
	if (sc->inbuflen > 0)
		FUNC1(&sc->phyp_inbuf.str[0], &sc->phyp_inbuf.str[bufsize],
		    sc->inbuflen);

	FUNC4(&sc->sc_mtx);
	return (bufsize);
}