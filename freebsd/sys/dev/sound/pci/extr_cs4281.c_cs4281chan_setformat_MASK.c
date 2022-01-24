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
struct sc_chinfo {scalar_t__ dma_chan; int fmt; scalar_t__ dma_setup; int /*<<< orphan*/  bps; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int CS4281PCI_DMR_AUTO ; 
 int CS4281PCI_DMR_DMA ; 
 int CS4281PCI_DMR_TR_PLAY ; 
 int CS4281PCI_DMR_TR_REC ; 
 scalar_t__ CS4281_DMA_PLAY ; 
 int FUNC1 (struct sc_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, u_int32_t format)
{
    struct sc_chinfo *ch = data;
    struct sc_info *sc = ch->parent;
    u_int32_t v, go;

    go = FUNC1(ch, 0); /* pause */

    if (ch->dma_chan == CS4281_DMA_PLAY)
	v = CS4281PCI_DMR_TR_PLAY;
    else
	v = CS4281PCI_DMR_TR_REC;
    v |= CS4281PCI_DMR_DMA | CS4281PCI_DMR_AUTO;
    v |= FUNC3(format);
    FUNC4(sc, FUNC0(ch->dma_chan), v);

    FUNC1(ch, go); /* unpause */

    ch->fmt = format;
    ch->bps = FUNC2(format);
    ch->dma_setup = 0;

    return 0;
}