#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {scalar_t__ channel; } ;
struct TYPE_5__ {scalar_t__ channel; scalar_t__ run; } ;
struct emu_pcm_info {int /*<<< orphan*/  lock; TYPE_3__ rch_efx; TYPE_2__ rch_adc; TYPE_1__* pch; int /*<<< orphan*/  card; } ;
struct TYPE_4__ {int run; int /*<<< orphan*/  timer; scalar_t__ channel; } ;

/* Variables and functions */
 int EMU_IPR_ADCBUFFULL ; 
 int EMU_IPR_ADCBUFHALFFULL ; 
 int EMU_IPR_EFXBUFFULL ; 
 int EMU_IPR_EFXBUFHALFFULL ; 
 int EMU_IPR_INTERVALTIMER ; 
 int MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(void *pcm, uint32_t stat)
{
	struct emu_pcm_info *sc = (struct emu_pcm_info *)pcm;
	uint32_t ack;
	int i;

	ack = 0;

	FUNC2(sc->lock);
	
	if (stat & EMU_IPR_INTERVALTIMER) {
		ack |= EMU_IPR_INTERVALTIMER;
		for (i = 0; i < MAX_CHANNELS; i++)
			if (sc->pch[i].channel) {
				if (sc->pch[i].run == 1) {
					FUNC3(sc->lock);
					FUNC0(sc->pch[i].channel);
					FUNC2(sc->lock);
				} else
					FUNC1(sc->card, sc->pch[i].timer, 0);
			}
		/* ADC may install timer to get low-latency interrupts */
		if ((sc->rch_adc.channel) && (sc->rch_adc.run)) {
			FUNC3(sc->lock);
			FUNC0(sc->rch_adc.channel);
			FUNC2(sc->lock);
		}
		/*
		 * EFX does not use timer, because it will fill
		 * buffer at least 32x times faster than ADC.
		 */
	}


	if (stat & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL)) {
		ack |= stat & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL);
		if (sc->rch_adc.channel) {
			FUNC3(sc->lock);
			FUNC0(sc->rch_adc.channel);
			FUNC2(sc->lock);
		}
	}

	if (stat & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL)) {
		ack |= stat & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL);
		if (sc->rch_efx.channel) {
			FUNC3(sc->lock);
			FUNC0(sc->rch_efx.channel);
			FUNC2(sc->lock);
		}
	}
	FUNC3(sc->lock);

	return (ack);
}