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
typedef  int /*<<< orphan*/  uint64_t ;
struct work_request_hdr {unsigned int wrh_hi; unsigned int wrh_lo; } ;
struct txq_state {size_t pidx; unsigned int gen; } ;
struct tx_sw_desc {int dummy; } ;
struct tx_desc {int /*<<< orphan*/ * flit; } ;
struct sge_txq {size_t size; struct tx_sw_desc* sdesc; struct tx_desc* desc; } ;
struct sg_ent {int dummy; } ;

/* Variables and functions */
 int F_WR_EOP ; 
 int F_WR_SOP ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 unsigned int WR_FLITS ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct work_request_hdr*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct tx_desc*,unsigned int) ; 

__attribute__((used)) static void
FUNC11(unsigned int ndesc, struct tx_desc *txd, struct txq_state *txqs,
    const struct sge_txq *txq, const struct sg_ent *sgl, unsigned int flits,
    unsigned int sgl_flits, unsigned int wr_hi, unsigned int wr_lo)
{

	struct work_request_hdr *wrp = (struct work_request_hdr *)txd;
	struct tx_sw_desc *txsd = &txq->sdesc[txqs->pidx];
	
	if (FUNC4(ndesc == 1)) {
		FUNC8(wrp, FUNC5(F_WR_SOP | F_WR_EOP | FUNC0(1) |
		    FUNC3(flits)) | wr_hi,
		    FUNC5(FUNC2(flits + sgl_flits) | FUNC1(txqs->gen)) |
		    wr_lo);

		FUNC10(txd, txqs->gen);
		
	} else {
		unsigned int ogen = txqs->gen;
		const uint64_t *fp = (const uint64_t *)sgl;
		struct work_request_hdr *wp = wrp;
		
		wrp->wrh_hi = FUNC5(F_WR_SOP | FUNC0(1) |
		    FUNC3(flits)) | wr_hi;
		
		while (sgl_flits) {
			unsigned int avail = WR_FLITS - flits;

			if (avail > sgl_flits)
				avail = sgl_flits;
			FUNC6(&txd->flit[flits], fp, avail * sizeof(*fp));
			sgl_flits -= avail;
			ndesc--;
			if (!sgl_flits)
				break;
			
			fp += avail;
			txd++;
			txsd++;
			if (++txqs->pidx == txq->size) {
				txqs->pidx = 0;
				txqs->gen ^= 1;
				txd = txq->desc;
				txsd = txq->sdesc;
			}

			/*
			 * when the head of the mbuf chain
			 * is freed all clusters will be freed
			 * with it
			 */
			wrp = (struct work_request_hdr *)txd;
			wrp->wrh_hi = FUNC5(FUNC0(1) |
			    FUNC3(1)) | wr_hi;
			wrp->wrh_lo = FUNC5(FUNC2(FUNC7(WR_FLITS,
				    sgl_flits + 1)) |
			    FUNC1(txqs->gen)) | wr_lo;
			FUNC10(txd, txqs->gen);
			flits = 1;
		}
		wrp->wrh_hi |= FUNC5(F_WR_EOP);
		FUNC9();
		wp->wrh_lo = FUNC5(FUNC2(WR_FLITS) | FUNC1(ogen)) | wr_lo;
		FUNC10((struct tx_desc *)wp, ogen);
	}
}