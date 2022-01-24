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
 int /*<<< orphan*/  CMPCI_REG_CH0_ENABLE ; 
 int /*<<< orphan*/  CMPCI_REG_CH0_INTR_ENABLE ; 
 int /*<<< orphan*/  CMPCI_REG_DMA0_BASE ; 
 int /*<<< orphan*/  CMPCI_REG_FUNC_0 ; 
 int /*<<< orphan*/  CMPCI_REG_INTR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,struct sc_chinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct sc_info *sc, struct sc_chinfo *ch)
{
	FUNC0(sc, ch, CMPCI_REG_DMA0_BASE);

	FUNC1(sc, CMPCI_REG_FUNC_0, CMPCI_REG_CH0_ENABLE);
	FUNC1(sc, CMPCI_REG_INTR_CTRL,
		 CMPCI_REG_CH0_INTR_ENABLE);

	ch->dma_active = 1;
}