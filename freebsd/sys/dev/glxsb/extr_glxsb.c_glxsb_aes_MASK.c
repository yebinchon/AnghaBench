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
typedef  int uint32_t ;
struct glxsb_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_sr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int GLXSB_MAX_AES_LEN ; 
 int /*<<< orphan*/  SB_CBC_IV ; 
 int /*<<< orphan*/  SB_CTL_A ; 
 int SB_CTL_CBC ; 
 int SB_CTL_DC ; 
 int SB_CTL_SC ; 
 int SB_CTL_ST ; 
 int SB_CTL_WK ; 
 int /*<<< orphan*/  SB_DEST_A ; 
 int /*<<< orphan*/  SB_LENGTH_A ; 
 int /*<<< orphan*/  SB_SOURCE_A ; 
 int /*<<< orphan*/  SB_WKEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct glxsb_softc *sc, uint32_t control, uint32_t psrc,
    uint32_t pdst, void *key, int len, void *iv)
{
	uint32_t status;
	int i;

	if (len & 0xF) {
		FUNC3(sc->sc_dev,
		    "len must be a multiple of 16 (not %d)\n", len);
		return (EINVAL);
	}

	/* Set the source */
	FUNC1(sc->sc_sr, SB_SOURCE_A, psrc);

	/* Set the destination address */
	FUNC1(sc->sc_sr, SB_DEST_A, pdst);

	/* Set the data length */
	FUNC1(sc->sc_sr, SB_LENGTH_A, len);

	/* Set the IV */
	if (iv != NULL) {
		FUNC2(sc->sc_sr, SB_CBC_IV, iv, 4);
		control |= SB_CTL_CBC;
	}

	/* Set the key */
	FUNC2(sc->sc_sr, SB_WKEY, key, 4);

	/* Ask the security block to do it */
	FUNC1(sc->sc_sr, SB_CTL_A,
	    control | SB_CTL_WK | SB_CTL_DC | SB_CTL_SC | SB_CTL_ST);

	/*
	 * Now wait until it is done.
	 *
	 * We do a busy wait.  Obviously the number of iterations of
	 * the loop required to perform the AES operation depends upon
	 * the number of bytes to process.
	 *
	 * On a 500 MHz Geode LX we see
	 *
	 *	length (bytes)	typical max iterations
	 *	    16		   12
	 *	    64		   22
	 *	   256		   59
	 *	  1024		  212
	 *	  8192		1,537
	 *
	 * Since we have a maximum size of operation defined in
	 * GLXSB_MAX_AES_LEN, we use this constant to decide how long
	 * to wait.  Allow an order of magnitude longer than it should
	 * really take, just in case.
	 */

	for (i = 0; i < GLXSB_MAX_AES_LEN * 10; i++) {
		status = FUNC0(sc->sc_sr, SB_CTL_A);
		if ((status & SB_CTL_ST) == 0)		/* Done */
			return (0);
	}

	FUNC3(sc->sc_dev, "operation failed to complete\n");
	return (EIO);
}