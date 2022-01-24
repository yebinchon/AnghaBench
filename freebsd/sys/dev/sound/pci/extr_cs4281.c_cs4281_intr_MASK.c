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
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct sc_info {TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4281PCI_HICR ; 
 int /*<<< orphan*/  CS4281PCI_HICR_EOI ; 
 int /*<<< orphan*/  CS4281PCI_HISR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4281_DMA_PLAY ; 
 int /*<<< orphan*/  CS4281_DMA_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *p)
{
    struct sc_info *sc = (struct sc_info *)p;
    u_int32_t hisr;

    hisr = FUNC3(sc, CS4281PCI_HISR);

    if (hisr == 0) return;

    if (hisr & FUNC1(CS4281_DMA_PLAY)) {
	FUNC2(sc->pch.channel);
	FUNC3(sc, FUNC0(CS4281_DMA_PLAY)); /* Clear interrupt */
    }

    if (hisr & FUNC1(CS4281_DMA_REC)) {
	FUNC2(sc->rch.channel);
	FUNC3(sc, FUNC0(CS4281_DMA_REC)); /* Clear interrupt */
    }

    /* Signal End-of-Interrupt */
    FUNC4(sc, CS4281PCI_HICR, CS4281PCI_HICR_EOI);
}