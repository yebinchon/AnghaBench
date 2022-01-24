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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint64_t ;
struct sge_fl {size_t pidx; scalar_t__ zone; int gen; size_t size; int db_pending; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  credits; struct rx_desc* desc; struct rx_sw_desc* sdesc; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  entry_tag; } ;
struct rx_sw_desc {int flags; struct mbuf* m; int /*<<< orphan*/ * rxsd_cl; int /*<<< orphan*/  map; } ;
struct rx_desc {void* gen2; void* len_gen; void* addr_hi; void* addr_lo; } ;
struct TYPE_4__ {int ds_addr; } ;
struct refill_fl_cb_arg {TYPE_2__ seg; scalar_t__ error; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ext_buf; } ;
struct mbuf {TYPE_1__ m_ext; } ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MT_NOINIT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int RX_SW_DESC_INUSE ; 
 int RX_SW_DESC_MAP_CREATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct refill_fl_cb_arg*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  refill_fl_cb ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ zone_pack ; 

__attribute__((used)) static void
FUNC14(adapter_t *sc, struct sge_fl *q, int n)
{
	struct rx_sw_desc *sd = &q->sdesc[q->pidx];
	struct rx_desc *d = &q->desc[q->pidx];
	struct refill_fl_cb_arg cb_arg;
	struct mbuf *m;
	caddr_t cl;
	int err;
	
	cb_arg.error = 0;
	while (n--) {
		/*
		 * We allocate an uninitialized mbuf + cluster, mbuf is
		 * initialized after rx.
		 */
		if (q->zone == zone_pack) {
			if ((m = FUNC9(M_NOWAIT, MT_NOINIT, M_PKTHDR)) == NULL)
				break;
			cl = m->m_ext.ext_buf;			
		} else {
			if ((cl = FUNC7(NULL, M_NOWAIT, q->buf_size)) == NULL)
				break;
			if ((m = FUNC10(M_NOWAIT, MT_NOINIT)) == NULL) {
				FUNC13(q->zone, cl);
				break;
			}
		}
		if ((sd->flags & RX_SW_DESC_MAP_CREATED) == 0) {
			if ((err = FUNC3(q->entry_tag, 0, &sd->map))) {
				FUNC6(LOG_WARNING, "bus_dmamap_create failed %d\n", err);
				FUNC13(q->zone, cl);
				goto done;
			}
			sd->flags |= RX_SW_DESC_MAP_CREATED;
		}
#if !defined(__i386__) && !defined(__amd64__)
		err = bus_dmamap_load(q->entry_tag, sd->map,
		    cl, q->buf_size, refill_fl_cb, &cb_arg, 0);
		
		if (err != 0 || cb_arg.error) {
			if (q->zone != zone_pack)
				uma_zfree(q->zone, cl);
			m_free(m);
			goto done;
		}
#else
		cb_arg.seg.ds_addr = FUNC11((vm_offset_t)cl);
#endif		
		sd->flags |= RX_SW_DESC_INUSE;
		sd->rxsd_cl = cl;
		sd->m = m;
		d->addr_lo = FUNC5(cb_arg.seg.ds_addr & 0xffffffff);
		d->addr_hi = FUNC5(((uint64_t)cb_arg.seg.ds_addr >>32) & 0xffffffff);
		d->len_gen = FUNC5(FUNC1(q->gen));
		d->gen2 = FUNC5(FUNC2(q->gen));

		d++;
		sd++;

		if (++q->pidx == q->size) {
			q->pidx = 0;
			q->gen ^= 1;
			sd = q->sdesc;
			d = q->desc;
		}
		q->credits++;
		q->db_pending++;
	}

done:
	if (q->db_pending >= 32) {
		q->db_pending = 0;
		FUNC12(sc, A_SG_KDOORBELL, FUNC0(q->cntxt_id));
	}
}