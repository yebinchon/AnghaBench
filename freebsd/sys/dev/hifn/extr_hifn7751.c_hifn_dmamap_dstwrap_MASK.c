#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hifn_softc {struct hifn_dma* sc_dma; } ;
struct hifn_dma {TYPE_1__* dstr; } ;
struct TYPE_2__ {int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct hifn_softc*,int,int) ; 
 int HIFN_D_DST_RSIZE ; 
 int HIFN_D_JUMP ; 
 int HIFN_D_MASKDONEIRQ ; 
 int HIFN_D_VALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static __inline int
FUNC2(struct hifn_softc *sc, int idx)
{
	struct hifn_dma *dma = sc->sc_dma;

	if (++idx == HIFN_D_DST_RSIZE) {
		dma->dstr[idx].l = FUNC1(HIFN_D_VALID | HIFN_D_JUMP |
		    HIFN_D_MASKDONEIRQ);
		FUNC0(sc, idx,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		idx = 0;
	}
	return (idx);
}