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
typedef  int /*<<< orphan*/  uint64_t ;
struct xlp_sec_softc {scalar_t__ sc_cid; int sec_vc_start; int sec_vc_end; int /*<<< orphan*/  sc_dev; } ;
struct xlp_sec_session {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  CRYPTO_3DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_AES_CBC ; 
 int /*<<< orphan*/  CRYPTO_ARC4 ; 
 int /*<<< orphan*/  CRYPTO_DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_MD5 ; 
 int /*<<< orphan*/  CRYPTO_MD5_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA1 ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  DFS_DEVICE_SAE ; 
 int ENXIO ; 
 scalar_t__ PCI_DEVICE_ID_NLM_SAE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xlp_sec_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (struct xlp_sec_softc*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct xlp_sec_softc *sc = FUNC2(dev);
	uint64_t base;
	int qstart, qnum;
	int freq, node;

	sc->sc_dev = dev;

	node = FUNC5(FUNC11(dev));
	freq = FUNC9(node, DFS_DEVICE_SAE, 250);
	if (bootverbose)
		FUNC3(dev, "SAE Freq: %dMHz\n", freq);
	if(FUNC10(dev) == PCI_DEVICE_ID_NLM_SAE) {
		FUNC4(dev, "XLP Security Accelerator");
		sc->sc_cid = FUNC0(dev,
		    sizeof(struct xlp_sec_session), CRYPTOCAP_F_HARDWARE);
		if (sc->sc_cid < 0) {
			FUNC12("xlp_sec - error : could not get the driver"
			    " id\n");
			goto error_exit;
		}
		if (FUNC1(sc->sc_cid, CRYPTO_DES_CBC, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_DES_CBC\n");

		if (FUNC1(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_3DES_CBC\n");

		if (FUNC1(sc->sc_cid, CRYPTO_AES_CBC, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_AES_CBC\n");

		if (FUNC1(sc->sc_cid, CRYPTO_ARC4, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_ARC4\n");

		if (FUNC1(sc->sc_cid, CRYPTO_MD5, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_MD5\n");

		if (FUNC1(sc->sc_cid, CRYPTO_SHA1, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_SHA1\n");

		if (FUNC1(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_MD5_HMAC\n");

		if (FUNC1(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0) != 0)
			FUNC12("register failed for CRYPTO_SHA1_HMAC\n");

		base = FUNC6(node);
		qstart = FUNC7(base);
		qnum = FUNC8(base);
		sc->sec_vc_start = qstart;
		sc->sec_vc_end = qstart + qnum - 1;
	}

	if (FUNC13(sc) != 0)
		goto error_exit;
	if (bootverbose)
		FUNC3(dev, "SEC Initialization complete!\n");
	return (0);

error_exit:
	return (ENXIO);

}