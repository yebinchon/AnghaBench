
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ifp; } ;
struct octeon_device {TYPE_3__ props; } ;
struct lio_mbuf_free_info {int mb; int map; struct lio_gather* g; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct lio_instr_queue {int txtag; struct octeon_device* oct_dev; TYPE_2__ txpciq; } ;
struct lio_gather {int node; } ;
struct lio {int * glist_lock; int * ghead; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int entries ;
 struct lio* if_getsoftc (int ) ;
 int m_freem (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
lio_free_sgmbuf(struct lio_instr_queue *iq, struct lio_mbuf_free_info *finfo)
{
 struct lio_gather *g;
 struct octeon_device *oct;
 struct lio *lio;
 int iq_no;

 g = finfo->g;
 iq_no = iq->txpciq.s.q_no;
 oct = iq->oct_dev;
 lio = if_getsoftc(oct->props.ifp);

 mtx_lock(&lio->glist_lock[iq_no]);
 STAILQ_INSERT_TAIL(&lio->ghead[iq_no], &g->node, entries);
 mtx_unlock(&lio->glist_lock[iq_no]);

 bus_dmamap_sync(iq->txtag, finfo->map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(iq->txtag, finfo->map);
 m_freem(finfo->mb);
}
