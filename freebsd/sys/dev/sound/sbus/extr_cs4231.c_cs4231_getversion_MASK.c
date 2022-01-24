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
typedef  int u_int8_t ;
struct cs4231_softc {int sc_codecv; int sc_chipvid; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int CS_CODEC_ID_MASK ; 
 int /*<<< orphan*/  CS_MISC_INFO ; 
 int CS_VERSION_CHIPID ; 
 int /*<<< orphan*/  CS_VERSION_ID ; 
 int CS_VERSION_NUMBER ; 
 int FUNC0 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void
FUNC2(struct cs4231_softc *sc)
{
	u_int8_t v;

	v = FUNC0(sc, CS_MISC_INFO);
	sc->sc_codecv = v & CS_CODEC_ID_MASK;
	v = FUNC0(sc, CS_VERSION_ID);
	v &= (CS_VERSION_NUMBER | CS_VERSION_CHIPID);
	sc->sc_chipvid = v;
	switch(v) {
		case 0x80:
			FUNC1(sc->sc_dev, "<CS4231 Codec Id. %d>\n",
			    sc->sc_codecv);
			break;
		case 0xa0:
			FUNC1(sc->sc_dev, "<CS4231A Codec Id. %d>\n",
			    sc->sc_codecv);
			break;
		case 0x82:
			FUNC1(sc->sc_dev, "<CS4232 Codec Id. %d>\n",
			    sc->sc_codecv);
			break;
		default:
			FUNC1(sc->sc_dev,
			    "<Unknown 0x%x Codec Id. %d\n", v, sc->sc_codecv);
			break;
	}
}