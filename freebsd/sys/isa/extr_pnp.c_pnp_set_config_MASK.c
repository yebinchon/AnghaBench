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
typedef  int uint32_t ;
struct pnp_set_config_arg {int csn; int ldn; } ;
struct isa_config {int ic_nmem; int ic_nport; int ic_nirq; int ic_ndrq; scalar_t__* ic_irqmask; scalar_t__* ic_drqmask; TYPE_2__* ic_port; TYPE_1__* ic_mem; } ;
struct TYPE_4__ {scalar_t__ ir_size; int ir_start; } ;
struct TYPE_3__ {scalar_t__ ir_size; int ir_start; } ;

/* Variables and functions */
 int ISA_PNP_NDRQ ; 
 int ISA_PNP_NIRQ ; 
 int ISA_PNP_NMEM ; 
 int ISA_PNP_NPORT ; 
 int /*<<< orphan*/  PNP_ACTIVATE ; 
 int /*<<< orphan*/  PNP_CONFIG_CONTROL ; 
 int PNP_CONFIG_CONTROL_WAIT_FOR_KEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  PNP_SET_LDN ; 
 int /*<<< orphan*/  PNP_WAKE ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int) ; 

__attribute__((used)) static void
FUNC14(void *arg, struct isa_config *config, int enable)
{
	int csn = ((struct pnp_set_config_arg *) arg)->csn;
	int ldn = ((struct pnp_set_config_arg *) arg)->ldn;
	int i;

	/*
	 * First put all cards into Sleep state with the initiation
	 * key, then put our card into Config state.
	 */
	FUNC11();
	FUNC12(PNP_WAKE, csn);

	/*
	 * Select our logical device so that we can program it.
	 */
	FUNC12(PNP_SET_LDN, ldn);

	/*
	 * Constrain the number of resources we will try to program
	 */
	if (config->ic_nmem > ISA_PNP_NMEM) {
		FUNC13("too many ISA memory ranges (%d > %d)\n",
		    config->ic_nmem, ISA_PNP_NMEM);
		config->ic_nmem = ISA_PNP_NMEM;
	}
	if (config->ic_nport > ISA_PNP_NPORT) {
		FUNC13("too many ISA I/O ranges (%d > %d)\n", config->ic_nport,
		    ISA_PNP_NPORT);
		config->ic_nport = ISA_PNP_NPORT;
	}
	if (config->ic_nirq > ISA_PNP_NIRQ) {
		FUNC13("too many ISA IRQs (%d > %d)\n", config->ic_nirq,
		    ISA_PNP_NIRQ);
		config->ic_nirq = ISA_PNP_NIRQ;
	}
	if (config->ic_ndrq > ISA_PNP_NDRQ) {
		FUNC13("too many ISA DRQs (%d > %d)\n", config->ic_ndrq,
		    ISA_PNP_NDRQ);
		config->ic_ndrq = ISA_PNP_NDRQ;
	}

	/*
	 * Now program the resources.
	 */
	for (i = 0; i < config->ic_nmem; i++) {
		uint32_t start;
		uint32_t size;

		/* XXX: should handle memory control register, 32 bit memory */
		if (config->ic_mem[i].ir_size == 0) {
			FUNC12(FUNC5(i), 0);
			FUNC12(FUNC6(i), 0);
			FUNC12(FUNC7(i), 0);
			FUNC12(FUNC8(i), 0);
		} else {
			start = config->ic_mem[i].ir_start;
			size =  config->ic_mem[i].ir_size;
			if (start & 0xff)
				FUNC10("pnp_set_config: bogus memory assignment");
			FUNC12(FUNC5(i), (start >> 16) & 0xff);
			FUNC12(FUNC6(i), (start >> 8) & 0xff);
			FUNC12(FUNC7(i), (size >> 16) & 0xff);
			FUNC12(FUNC8(i), (size >> 8) & 0xff);
		}
	}
	for (; i < ISA_PNP_NMEM; i++) {
		FUNC12(FUNC5(i), 0);
		FUNC12(FUNC6(i), 0);
		FUNC12(FUNC7(i), 0);
		FUNC12(FUNC8(i), 0);
	}

	for (i = 0; i < config->ic_nport; i++) {
		uint32_t start;

		if (config->ic_port[i].ir_size == 0) {
			FUNC12(FUNC1(i), 0);
			FUNC12(FUNC2(i), 0);
		} else {
			start = config->ic_port[i].ir_start;
			FUNC12(FUNC1(i), (start >> 8) & 0xff);
			FUNC12(FUNC2(i), (start >> 0) & 0xff);
		}
	}
	for (; i < ISA_PNP_NPORT; i++) {
		FUNC12(FUNC1(i), 0);
		FUNC12(FUNC2(i), 0);
	}

	for (i = 0; i < config->ic_nirq; i++) {
		int irq;

		/* XXX: interrupt type */
		if (config->ic_irqmask[i] == 0) {
			FUNC12(FUNC3(i), 0);
			FUNC12(FUNC4(i), 2);
		} else {
			irq = FUNC9(config->ic_irqmask[i]) - 1;
			FUNC12(FUNC3(i), irq);
			FUNC12(FUNC4(i), 2); /* XXX */
		}
	}
	for (; i < ISA_PNP_NIRQ; i++) {
		/*
		 * IRQ 0 is not a valid interrupt selection and
		 * represents no interrupt selection.
		 */
		FUNC12(FUNC3(i), 0);
		FUNC12(FUNC4(i), 2);
	}		

	for (i = 0; i < config->ic_ndrq; i++) {
		int drq;

		if (config->ic_drqmask[i] == 0) {
			FUNC12(FUNC0(i), 4);
		} else {
			drq = FUNC9(config->ic_drqmask[i]) - 1;
			FUNC12(FUNC0(i), drq);
		}
	}
	for (; i < ISA_PNP_NDRQ; i++) {
		/*
		 * DMA channel 4, the cascade channel is used to
		 * indicate no DMA channel is active.
		 */
		FUNC12(FUNC0(i), 4);
	}		

	FUNC12(PNP_ACTIVATE, enable ? 1 : 0);

	/*
	 * Wake everyone up again, we are finished.
	 */
	FUNC12(PNP_CONFIG_CONTROL, PNP_CONFIG_CONTROL_WAIT_FOR_KEY);
}