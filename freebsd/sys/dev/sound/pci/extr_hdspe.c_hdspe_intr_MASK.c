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
struct sc_pcminfo {int /*<<< orphan*/  (* ih ) (struct sc_pcminfo*) ;} ;
struct sc_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int HDSPE_AUDIO_IRQ_PENDING ; 
 int /*<<< orphan*/  HDSPE_INTERRUPT_ACK ; 
 int /*<<< orphan*/  HDSPE_STATUS_REG ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct sc_pcminfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sc_pcminfo*) ; 

__attribute__((used)) static void
FUNC8(void *p)
{
	struct sc_pcminfo *scp;
	struct sc_info *sc;
	device_t *devlist;
	int devcount;
	int status;
	int err;
	int i;

	sc = (struct sc_info *)p;

	FUNC5(sc->lock);

	status = FUNC3(sc, HDSPE_STATUS_REG);
	if (status & HDSPE_AUDIO_IRQ_PENDING) {
		if ((err = FUNC0(sc->dev, &devlist, &devcount)) != 0)
			return;

		for (i = 0; i < devcount; i++) {
			scp = FUNC1(devlist[i]);
			if (scp->ih != NULL)
				scp->ih(scp);
		}

		FUNC4(sc, HDSPE_INTERRUPT_ACK, 0);
		FUNC2(devlist, M_TEMP);
	}

	FUNC6(sc->lock);
}