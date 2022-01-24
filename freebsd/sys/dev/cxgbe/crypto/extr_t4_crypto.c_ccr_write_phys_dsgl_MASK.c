#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_paddr_t ;
typedef  size_t u_int ;
struct sglist {size_t sg_nseg; TYPE_4__* sg_segs; } ;
struct phys_sge_pairs {void** len; int /*<<< orphan*/ * addr; } ;
struct TYPE_7__ {scalar_t__ hash_val; void* qid; int /*<<< orphan*/  opcode; } ;
struct cpl_rx_phys_dsgl {TYPE_3__ rss_hdr_int; void* pcirlxorder_to_noofsgentr; void* op_to_tid; } ;
struct ccr_softc {TYPE_2__* rxq; struct sglist* sg_dsgl; } ;
struct TYPE_8__ {size_t ss_len; size_t ss_paddr; } ;
struct TYPE_5__ {size_t abs_id; } ;
struct TYPE_6__ {TYPE_1__ iq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_RX_PHYS_ADDR ; 
 int /*<<< orphan*/  CPL_RX_PHYS_DSGL ; 
 size_t DSGL_SGE_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (size_t) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 

__attribute__((used)) static void
FUNC11(struct ccr_softc *sc, void *dst, int nsegs)
{
	struct sglist *sg;
	struct cpl_rx_phys_dsgl *cpl;
	struct phys_sge_pairs *sgl;
	vm_paddr_t paddr;
	size_t seglen;
	u_int i, j;

	sg = sc->sg_dsgl;
	cpl = dst;
	cpl->op_to_tid = FUNC9(FUNC4(CPL_RX_PHYS_DSGL) |
	    FUNC2(0));
	cpl->pcirlxorder_to_noofsgentr = FUNC9(
	    FUNC6(0) |
	    FUNC5(0) |
	    FUNC7(0) | FUNC1(0) |
	    FUNC3(nsegs));
	cpl->rss_hdr_int.opcode = CPL_RX_PHYS_ADDR;
	cpl->rss_hdr_int.qid = FUNC8(sc->rxq->iq.abs_id);
	cpl->rss_hdr_int.hash_val = 0;
	sgl = (struct phys_sge_pairs *)(cpl + 1);
	j = 0;
	for (i = 0; i < sg->sg_nseg; i++) {
		seglen = sg->sg_segs[i].ss_len;
		paddr = sg->sg_segs[i].ss_paddr;
		do {
			sgl->addr[j] = FUNC10(paddr);
			if (seglen > DSGL_SGE_MAXLEN) {
				sgl->len[j] = FUNC8(DSGL_SGE_MAXLEN);
				paddr += DSGL_SGE_MAXLEN;
				seglen -= DSGL_SGE_MAXLEN;
			} else {
				sgl->len[j] = FUNC8(seglen);
				seglen = 0;
			}
			j++;
			if (j == 8) {
				sgl++;
				j = 0;
			}
		} while (seglen != 0);
	}
	FUNC0(j + 8 * (sgl - (struct phys_sge_pairs *)(cpl + 1)) == nsegs);
}