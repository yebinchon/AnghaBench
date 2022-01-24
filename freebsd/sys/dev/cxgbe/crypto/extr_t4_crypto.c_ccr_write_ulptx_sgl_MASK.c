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
struct ulptx_sgl {TYPE_1__* sge; void* addr0; void* len0; void* cmd_nsge; } ;
struct sglist_seg {int ss_len; int /*<<< orphan*/  ss_paddr; } ;
struct sglist {int sg_nseg; struct sglist_seg* sg_segs; } ;
struct ccr_softc {struct sglist* sg_ulptx; } ;
struct TYPE_2__ {void** addr; void** len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ULP_TX_SC_DSGL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ccr_softc *sc, void *dst, int nsegs)
{
	struct ulptx_sgl *usgl;
	struct sglist *sg;
	struct sglist_seg *ss;
	int i;

	sg = sc->sg_ulptx;
	FUNC0(nsegs == sg->sg_nseg);
	ss = &sg->sg_segs[0];
	usgl = dst;
	usgl->cmd_nsge = FUNC3(FUNC1(ULP_TX_SC_DSGL) |
	    FUNC2(nsegs));
	usgl->len0 = FUNC3(ss->ss_len);
	usgl->addr0 = FUNC4(ss->ss_paddr);
	ss++;
	for (i = 0; i < sg->sg_nseg - 1; i++) {
		usgl->sge[i / 2].len[i & 1] = FUNC3(ss->ss_len);
		usgl->sge[i / 2].addr[i & 1] = FUNC4(ss->ss_paddr);
		ss++;
	}
	
}