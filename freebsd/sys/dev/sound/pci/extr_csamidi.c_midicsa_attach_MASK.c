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
struct sndcard_func {int dummy; } ;
struct csa_midi_softc {int /*<<< orphan*/ * io; int /*<<< orphan*/  io_rid; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * mpu; int /*<<< orphan*/  mpu_intr; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_HICR ; 
 int /*<<< orphan*/  BA0_MIDCR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int HICR_CHGM ; 
 int HICR_IEV ; 
 int MIDCR_MRST ; 
 int MIDCR_RXE ; 
 int MIDCR_TXE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct csa_midi_softc*,int) ; 
 int /*<<< orphan*/  csamidi_midi_intr ; 
 int /*<<< orphan*/  csamidi_mpu_class ; 
 int /*<<< orphan*/  FUNC4 (struct csa_midi_softc*,int /*<<< orphan*/ ,int) ; 
 struct sndcard_func* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct csa_midi_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,struct csa_midi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct csa_midi_softc *scp;
	struct sndcard_func *func;
	int rc = ENXIO;

	scp = FUNC7(dev);
	func = FUNC5(dev);

	FUNC3(scp, sizeof(struct csa_midi_softc));
	scp->dev = dev;

	/* allocate the required resources */
	scp->io_rid = FUNC0(0);
	scp->io = FUNC1(dev, SYS_RES_MEMORY,
	    &scp->io_rid, RF_ACTIVE);
	if (scp->io == NULL)
		goto err0;

	/* init the fake MPU401 interface. */
	scp->mpu = FUNC8(&csamidi_mpu_class, scp, csamidi_midi_intr,
	    &scp->mpu_intr);
	if (scp->mpu == NULL) {
		rc = ENOMEM;
		goto err1;
	}

	FUNC9(&scp->mtx, FUNC6(dev), "csamidi softc",
	    MTX_DEF);

	/* reset the MIDI port */
	FUNC4(scp, BA0_MIDCR, MIDCR_MRST);
	/* MIDI transmit enable, no interrupt */
	FUNC4(scp, BA0_MIDCR, MIDCR_TXE | MIDCR_RXE);
	FUNC4(scp, BA0_HICR, HICR_IEV | HICR_CHGM);

	return (0);
err1:
	FUNC2(dev, SYS_RES_MEMORY, scp->io_rid, scp->io);
	scp->io = NULL;
err0:
	return (rc);
}