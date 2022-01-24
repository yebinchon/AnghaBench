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
typedef  int u_int32_t ;
struct sc_info {int nchans; int /*<<< orphan*/  lock; TYPE_2__* rch; TYPE_1__* pch; int /*<<< orphan*/  dev; int /*<<< orphan*/  mpu; int /*<<< orphan*/  (* mpu_intr ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ channel; } ;
struct TYPE_3__ {scalar_t__ channel; scalar_t__ run; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_IPR ; 
 int EMU_IPR_ADCBUFFULL ; 
 int EMU_IPR_ADCBUFHALFFULL ; 
 int EMU_IPR_EFXBUFFULL ; 
 int EMU_IPR_EFXBUFHALFFULL ; 
 int EMU_IPR_INTERVALTIMER ; 
 int EMU_IPR_MICBUFFULL ; 
 int EMU_IPR_MICBUFHALFFULL ; 
 int EMU_IPR_MIDIRECVBUFE ; 
 int EMU_IPR_MIDITRANSBUFE ; 
 int EMU_IPR_RATETRCHANGE ; 
 int EMU_PCIERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *data)
{
	struct sc_info *sc = data;
	u_int32_t stat, ack, i, x;

	FUNC5(sc->lock);
	while (1) {
		stat = FUNC3(sc, EMU_IPR, 4);
		if (stat == 0)
			break;
		ack = 0;

		/* process irq */
		if (stat & EMU_IPR_INTERVALTIMER)
			ack |= EMU_IPR_INTERVALTIMER;

		if (stat & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL))
			ack |= stat & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL);

		if (stat & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL))
			ack |= stat & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL);

		if (stat & (EMU_IPR_MICBUFFULL | EMU_IPR_MICBUFHALFFULL))
			ack |= stat & (EMU_IPR_MICBUFFULL | EMU_IPR_MICBUFHALFFULL);

		if (stat & EMU_PCIERROR) {
			ack |= EMU_PCIERROR;
			FUNC1(sc->dev, "pci error\n");
			/* we still get an nmi with ecc ram even if we ack this */
		}
		if (stat & EMU_IPR_RATETRCHANGE) {
			ack |= EMU_IPR_RATETRCHANGE;
#ifdef EMUDEBUG
			device_printf(sc->dev,
			    "sample rate tracker lock status change\n");
#endif
		}

	    if (stat & EMU_IPR_MIDIRECVBUFE)
		if (sc->mpu_intr) {
		    (sc->mpu_intr)(sc->mpu);
		    ack |= EMU_IPR_MIDIRECVBUFE | EMU_IPR_MIDITRANSBUFE;
 		}
		if (stat & ~ack)
			FUNC1(sc->dev, "dodgy irq: %x (harmless)\n",
			    stat & ~ack);

		FUNC4(sc, EMU_IPR, stat, 4);

		if (ack) {
			FUNC6(sc->lock);

			if (ack & EMU_IPR_INTERVALTIMER) {
				x = 0;
				for (i = 0; i < sc->nchans; i++) {
					if (sc->pch[i].run) {
						x = 1;
						FUNC0(sc->pch[i].channel);
					}
				}
				if (x == 0)
					FUNC2(sc, 0);
			}


			if (ack & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL)) {
				if (sc->rch[0].channel)
					FUNC0(sc->rch[0].channel);
			}
			if (ack & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL)) {
				if (sc->rch[1].channel)
					FUNC0(sc->rch[1].channel);
			}
			if (ack & (EMU_IPR_MICBUFFULL | EMU_IPR_MICBUFHALFFULL)) {
				if (sc->rch[2].channel)
					FUNC0(sc->rch[2].channel);
			}

			FUNC5(sc->lock);
		}
	}
	FUNC6(sc->lock);
}