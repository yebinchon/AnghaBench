#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t jme_rx_cons; int /*<<< orphan*/  jme_rx_ring_map; int /*<<< orphan*/  jme_rx_ring_tag; } ;
struct TYPE_3__ {struct jme_desc* jme_rx_ring; } ;
struct jme_softc {TYPE_2__ jme_cdata; TYPE_1__ jme_rdata; } ;
struct jme_desc {int /*<<< orphan*/  buflen; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int EAGAIN ; 
 int JME_RD_OWN ; 
 int JME_RD_VALID ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_softc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct jme_softc *sc, int count)
{
	struct jme_desc *desc;
	int nsegs, prog, pktlen;

	FUNC2(sc->jme_cdata.jme_rx_ring_tag,
	    sc->jme_cdata.jme_rx_ring_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	for (prog = 0; count > 0; prog++) {
		desc = &sc->jme_rdata.jme_rx_ring[sc->jme_cdata.jme_rx_cons];
		if ((FUNC5(desc->flags) & JME_RD_OWN) == JME_RD_OWN)
			break;
		if ((FUNC5(desc->buflen) & JME_RD_VALID) == 0)
			break;
		nsegs = FUNC1(FUNC5(desc->buflen));
		/*
		 * Check number of segments against received bytes.
		 * Non-matching value would indicate that hardware
		 * is still trying to update Rx descriptors. I'm not
		 * sure whether this check is needed.
		 */
		pktlen = FUNC0(FUNC5(desc->buflen));
		if (nsegs != FUNC3(pktlen, MCLBYTES))
			break;
		prog++;
		/* Received a frame. */
		FUNC4(sc);
		count -= nsegs;
	}

	if (prog > 0)
		FUNC2(sc->jme_cdata.jme_rx_ring_tag,
		    sc->jme_cdata.jme_rx_ring_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (count > 0 ? 0 : EAGAIN);
}