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
struct an_softc {int /*<<< orphan*/  an_ifp; } ;

/* Variables and functions */
#define  AN_BAP0 129 
#define  AN_BAP1 128 
 int AN_OFF0 ; 
 int AN_OFF1 ; 
 int AN_OFF_BUSY ; 
 int AN_OFF_ERR ; 
 int AN_SEL0 ; 
 int AN_SEL1 ; 
 int AN_TIMEOUT ; 
 int FUNC0 (struct an_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*,int,int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct an_softc *sc, int id, int off, int chan)
{
	int			i;
	int			selreg, offreg;

	switch (chan) {
	case AN_BAP0:
		selreg = AN_SEL0;
		offreg = AN_OFF0;
		break;
	case AN_BAP1:
		selreg = AN_SEL1;
		offreg = AN_OFF1;
		break;
	default:
		FUNC2(sc->an_ifp, "invalid data path: %x\n", chan);
		return(EIO);
	}

	FUNC1(sc, selreg, id);
	FUNC1(sc, offreg, off);

	for (i = 0; i < AN_TIMEOUT; i++) {
		if (!(FUNC0(sc, offreg) & (AN_OFF_BUSY|AN_OFF_ERR)))
			break;
	}

	if (i == AN_TIMEOUT)
		return(ETIMEDOUT);

	return(0);
}