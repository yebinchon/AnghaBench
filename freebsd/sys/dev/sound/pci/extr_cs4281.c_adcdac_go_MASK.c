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
struct sc_info {int dummy; } ;
struct sc_chinfo {int /*<<< orphan*/  dma_chan; struct sc_info* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CS4281PCI_DCR_MSK ; 
 int /*<<< orphan*/  CS4281PCI_HICR ; 
 int /*<<< orphan*/  CS4281PCI_HICR_EOI ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC5(struct sc_chinfo *ch, u_int32_t go)
{
    struct sc_info *sc = ch->parent;
    u_int32_t going;

    going = !(FUNC2(sc, FUNC0(ch->dma_chan)) & CS4281PCI_DCR_MSK);

    if (go)
	FUNC1(sc, FUNC0(ch->dma_chan), CS4281PCI_DCR_MSK);
    else
	FUNC3(sc, FUNC0(ch->dma_chan), CS4281PCI_DCR_MSK);

    FUNC4(sc, CS4281PCI_HICR, CS4281PCI_HICR_EOI);

    return going;
}