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
struct xlp_rsa_softc {scalar_t__ sc_cid; int rsaecc_vc_start; int rsaecc_vc_end; int /*<<< orphan*/  sc_dev; } ;
struct xlp_rsa_session {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRK_MOD_EXP ; 
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  DFS_DEVICE_RSA ; 
 int ENXIO ; 
 scalar_t__ PCI_DEVICE_ID_NLM_RSA ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xlp_rsa_softc* FUNC2 (int /*<<< orphan*/ ) ; 
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
 scalar_t__ FUNC13 (struct xlp_rsa_softc*,int) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct xlp_rsa_softc *sc = FUNC2(dev);
	uint64_t base;
	int qstart, qnum;
	int freq, node;

	sc->sc_dev = dev;

	node = FUNC5(FUNC11(dev));
	freq = FUNC9(node, DFS_DEVICE_RSA, 250);
	if (bootverbose)
		FUNC3(dev, "RSA Freq: %dMHz\n", freq);
	if (FUNC10(dev) == PCI_DEVICE_ID_NLM_RSA) {
		FUNC4(dev, "XLP RSA/ECC Accelerator");
		sc->sc_cid = FUNC0(dev,
		    sizeof(struct xlp_rsa_session), CRYPTOCAP_F_HARDWARE);
		if (sc->sc_cid < 0) {
			FUNC12("xlp_rsaecc-err:couldn't get the driver id\n");
			goto error_exit;
		}
		if (FUNC1(sc->sc_cid, CRK_MOD_EXP, 0) != 0)
			goto error_exit;

		base = FUNC6(node);
		qstart = FUNC7(base);
		qnum = FUNC8(base);
		sc->rsaecc_vc_start = qstart;
		sc->rsaecc_vc_end = qstart + qnum - 1;
	}
	if (FUNC13(sc, node) != 0)
		goto error_exit;
	FUNC3(dev, "RSA Initialization complete!\n");
	return (0);

error_exit:
	return (ENXIO);
}