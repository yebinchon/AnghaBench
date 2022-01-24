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
typedef  int u_int32_t ;
struct sc_rchinfo {int active; scalar_t__ adc_data; int /*<<< orphan*/  prevptr; int /*<<< orphan*/  ptr; int /*<<< orphan*/  adc_idx; struct sc_info* parent; } ;
struct sc_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  CALL ; 
 scalar_t__ CDATA_INSTANCE_READY ; 
 int /*<<< orphan*/  CHANGE ; 
 int CLKRUN_GEN_ENABLE ; 
 int /*<<< orphan*/  HOST_INT_CTRL ; 
 scalar_t__ KDATA_ADC1_REQUEST ; 
 scalar_t__ KDATA_TIMER_COUNT_CURRENT ; 
 scalar_t__ KDATA_TIMER_COUNT_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
#define  PCMTRIG_ABORT 132 
#define  PCMTRIG_EMLDMARD 131 
#define  PCMTRIG_EMLDMAWR 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int FUNC2 (struct sc_info*) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC6(kobj_t kobj, void *chdata, int go)
{
	struct sc_rchinfo *ch = chdata;
	struct sc_info *sc = ch->parent;
	u_int32_t data;

	FUNC1(sc);
	FUNC0(go == PCMTRIG_START ? CHANGE :
		 go == PCMTRIG_STOP ? CHANGE :
		 go == PCMTRIG_ABORT ? CHANGE :
		 CALL,
		 ("m3_rchan_trigger(adc=%d, go=0x%x{%s})\n", ch->adc_idx, go,
		  go == PCMTRIG_START ? "PCMTRIG_START" :
		  go == PCMTRIG_STOP ? "PCMTRIG_STOP" :
		  go == PCMTRIG_ABORT ? "PCMTRIG_ABORT" : "ignore"));

	switch(go) {
	case PCMTRIG_START:
		if (ch->active) {
			return 0;
		}
		ch->active = 1;
		ch->ptr = 0;
		ch->prevptr = 0;

		/*[[inc_timer_users]]*/
		if (FUNC2(sc) == 1) {
	                FUNC5(sc, KDATA_TIMER_COUNT_RELOAD, 240);
        	        FUNC5(sc, KDATA_TIMER_COUNT_CURRENT, 240);
                	data = FUNC3(sc, HOST_INT_CTRL);
	                FUNC4(sc, HOST_INT_CTRL, data | CLKRUN_GEN_ENABLE);
		}

                FUNC5(sc, KDATA_ADC1_REQUEST, 1);
                FUNC5(sc, ch->adc_data + CDATA_INSTANCE_READY, 1);
		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		if (ch->active == 0) {
			return 0;
		}
		ch->active = 0;

		/*[[dec_timer_users]]*/
		if (FUNC2(sc) == 0) {
	                FUNC5(sc, KDATA_TIMER_COUNT_RELOAD, 0);
        	        FUNC5(sc, KDATA_TIMER_COUNT_CURRENT, 0);
                	data = FUNC3(sc, HOST_INT_CTRL);
	                FUNC4(sc, HOST_INT_CTRL, data & ~CLKRUN_GEN_ENABLE);
		}

                FUNC5(sc, ch->adc_data + CDATA_INSTANCE_READY, 0);
                FUNC5(sc, KDATA_ADC1_REQUEST, 0);
		break;

	case PCMTRIG_EMLDMAWR:
		/* got play irq, transfer next buffer - ignore if using dma */
	case PCMTRIG_EMLDMARD:
		/* got rec irq, transfer next buffer - ignore if using dma */
	default:
		break;
	}
	return 0;
}