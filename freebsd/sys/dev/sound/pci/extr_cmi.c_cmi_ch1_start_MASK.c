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
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPCI_REG_CH1_ENABLE ; 
 int /*<<< orphan*/  CMPCI_REG_CH1_INTR_ENABLE ; 
 int /*<<< orphan*/  CMPCI_REG_DMA1_BASE ; 
 int /*<<< orphan*/  CMPCI_REG_FUNC_0 ; 
 int /*<<< orphan*/  CMPCI_REG_INTR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,struct sc_chinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct sc_info *sc, struct sc_chinfo *ch)
{
	FUNC1(sc, ch, CMPCI_REG_DMA1_BASE);
	FUNC2(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH1_ENABLE);
	/* Enable Interrupts */
	FUNC2(sc, CMPCI_REG_INTR_CTRL,
		 CMPCI_REG_CH1_INTR_ENABLE);
	FUNC0(FUNC3("cmi_ch1_start: dma prog\n"));
	ch->dma_active = 1;
}