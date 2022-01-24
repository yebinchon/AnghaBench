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
struct sc_info {int /*<<< orphan*/  irq; int /*<<< orphan*/  reg; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SND_STATUSLEN ; 
 scalar_t__ FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  als_mixer_class ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sc_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sc_info*) ; 
 int /*<<< orphan*/  alspchan_class ; 
 int /*<<< orphan*/  alsrchan_class ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_als4000 ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct sc_info *sc;
	char status[SND_STATUSLEN];

	sc = FUNC7(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->lock = FUNC16(FUNC4(dev), "snd_als4000 softc");
	sc->dev = dev;

	FUNC9(dev);
	/*
	 * By default the power to the various components on the
         * ALS4000 is entirely controlled by the pci powerstate.  We
         * could attempt finer grained control by setting GCR6.31.
	 */
	if (FUNC10(dev) != PCI_POWERSTATE_D0) {
		/* Reset the power state. */
		FUNC5(dev, "chip is in D%d power mode "
			      "-- setting to D0\n", FUNC10(dev));
		FUNC11(dev, PCI_POWERSTATE_D0);
	}

	if (FUNC3(dev, sc)) {
		FUNC5(dev, "failed to allocate resources\n");
		goto bad_attach;
	}

	if (FUNC1(sc)) {
		FUNC5(dev, "failed to initialize hardware\n");
		goto bad_attach;
	}

	if (FUNC8(dev, &als_mixer_class, sc)) {
		FUNC5(dev, "failed to initialize mixer\n");
		goto bad_attach;
	}

	if (FUNC13(dev, sc, 1, 1)) {
		FUNC5(dev, "failed to register pcm entries\n");
		goto bad_attach;
	}

	FUNC12(dev, PCMDIR_PLAY, &alspchan_class, sc);
	FUNC12(dev, PCMDIR_REC,  &alsrchan_class, sc);

	FUNC17(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
		 FUNC15(sc->reg), FUNC15(sc->irq),FUNC0(snd_als4000));
	FUNC14(dev, status);
	return 0;

 bad_attach:
	FUNC2(dev, sc);
	FUNC6(sc, M_DEVBUF);
	return ENXIO;
}