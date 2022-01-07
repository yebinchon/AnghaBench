
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
struct sge_fl {size_t pidx; scalar_t__ zone; int gen; size_t size; int db_pending; int cntxt_id; int credits; struct rx_desc* desc; struct rx_sw_desc* sdesc; int buf_size; int entry_tag; } ;
struct rx_sw_desc {int flags; struct mbuf* m; int * rxsd_cl; int map; } ;
struct rx_desc {void* gen2; void* len_gen; void* addr_hi; void* addr_lo; } ;
struct TYPE_4__ {int ds_addr; } ;
struct refill_fl_cb_arg {TYPE_2__ seg; scalar_t__ error; } ;
struct TYPE_3__ {int * ext_buf; } ;
struct mbuf {TYPE_1__ m_ext; } ;
typedef int * caddr_t ;
typedef int adapter_t ;


 int A_SG_KDOORBELL ;
 int LOG_WARNING ;
 int MT_NOINIT ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int RX_SW_DESC_INUSE ;
 int RX_SW_DESC_MAP_CREATED ;
 int V_EGRCNTX (int ) ;
 int V_FLD_GEN1 (int) ;
 int V_FLD_GEN2 (int) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct refill_fl_cb_arg*,int ) ;
 void* htobe32 (int) ;
 int log (int ,char*,int) ;
 int * m_cljget (int *,int ,int ) ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 struct mbuf* m_gethdr (int ,int ) ;
 int pmap_kextract (int ) ;
 int refill_fl_cb ;
 int t3_write_reg (int *,int ,int ) ;
 int uma_zfree (scalar_t__,int *) ;
 scalar_t__ zone_pack ;

__attribute__((used)) static void
refill_fl(adapter_t *sc, struct sge_fl *q, int n)
{
 struct rx_sw_desc *sd = &q->sdesc[q->pidx];
 struct rx_desc *d = &q->desc[q->pidx];
 struct refill_fl_cb_arg cb_arg;
 struct mbuf *m;
 caddr_t cl;
 int err;

 cb_arg.error = 0;
 while (n--) {




  if (q->zone == zone_pack) {
   if ((m = m_getcl(M_NOWAIT, MT_NOINIT, M_PKTHDR)) == ((void*)0))
    break;
   cl = m->m_ext.ext_buf;
  } else {
   if ((cl = m_cljget(((void*)0), M_NOWAIT, q->buf_size)) == ((void*)0))
    break;
   if ((m = m_gethdr(M_NOWAIT, MT_NOINIT)) == ((void*)0)) {
    uma_zfree(q->zone, cl);
    break;
   }
  }
  if ((sd->flags & RX_SW_DESC_MAP_CREATED) == 0) {
   if ((err = bus_dmamap_create(q->entry_tag, 0, &sd->map))) {
    log(LOG_WARNING, "bus_dmamap_create failed %d\n", err);
    uma_zfree(q->zone, cl);
    goto done;
   }
   sd->flags |= RX_SW_DESC_MAP_CREATED;
  }
  cb_arg.seg.ds_addr = pmap_kextract((vm_offset_t)cl);

  sd->flags |= RX_SW_DESC_INUSE;
  sd->rxsd_cl = cl;
  sd->m = m;
  d->addr_lo = htobe32(cb_arg.seg.ds_addr & 0xffffffff);
  d->addr_hi = htobe32(((uint64_t)cb_arg.seg.ds_addr >>32) & 0xffffffff);
  d->len_gen = htobe32(V_FLD_GEN1(q->gen));
  d->gen2 = htobe32(V_FLD_GEN2(q->gen));

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
  t3_write_reg(sc, A_SG_KDOORBELL, V_EGRCNTX(q->cntxt_id));
 }
}
