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
struct sc_pcminfo {int /*<<< orphan*/  dev; struct sc_info* sc; struct hdspe_channel* hc; } ;
struct sc_info {int /*<<< orphan*/  type; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct hdspe_channel {int /*<<< orphan*/ * descr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AIO ; 
 int ENXIO ; 
 int HDSPE_MAX_CHANS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
#define  PCI_REVISION_AIO 129 
#define  PCI_REVISION_RAYDAT 128 
 int /*<<< orphan*/  RAYDAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct hdspe_channel* chan_map_aio ; 
 struct hdspe_channel* chan_map_rd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sc_pcminfo*) ; 
 int FUNC6 (struct sc_info*) ; 
 scalar_t__ FUNC7 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*) ; 
 struct sc_pcminfo* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct hdspe_channel *chan_map;
	struct sc_pcminfo *scp;
	struct sc_info *sc;
	uint32_t rev;
	int i, err;

#if 0
	device_printf(dev, "hdspe_attach()\n");
#endif

	sc = FUNC3(dev);
	sc->lock = FUNC12(FUNC2(dev),
	    "snd_hdspe softc");
	sc->dev = dev;

	FUNC10(dev);
	rev = FUNC11(dev);
	switch (rev) {
	case PCI_REVISION_AIO:
		sc->type = AIO;
		chan_map = chan_map_aio;
		break;
	case PCI_REVISION_RAYDAT:
		sc->type = RAYDAT;
		chan_map = chan_map_rd;
		break;
	default:
		return (ENXIO);
	}

	/* Allocate resources. */
	err = FUNC6(sc);
	if (err) {
		FUNC4(dev, "Unable to allocate system resources.\n");
		return (ENXIO);
	}

	if (FUNC7(sc) != 0)
		return (ENXIO);

	for (i = 0; i < HDSPE_MAX_CHANS && chan_map[i].descr != NULL; i++) {
		scp = FUNC9(sizeof(struct sc_pcminfo), M_DEVBUF, M_NOWAIT | M_ZERO);
		scp->hc = &chan_map[i];
		scp->sc = sc;
		scp->dev = FUNC1(dev, "pcm", -1);
		FUNC5(scp->dev, scp);
	}

	FUNC8(sc);

	return (FUNC0(dev));
}