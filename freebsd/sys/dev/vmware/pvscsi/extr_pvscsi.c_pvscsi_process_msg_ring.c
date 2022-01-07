
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {struct pvscsi_ring_msg_desc* msg_ring; struct pvscsi_rings_state* rings_state; int lock; } ;
struct pvscsi_rings_state {int msg_cons_idx; int msg_prod_idx; int msg_num_entries_log2; } ;
struct pvscsi_ring_msg_desc {int dummy; } ;


 int MASK (int ) ;
 int MA_OWNED ;
 int mb () ;
 int mtx_assert (int *,int ) ;
 int pvscsi_process_msg (struct pvscsi_softc*,struct pvscsi_ring_msg_desc*) ;

__attribute__((used)) static void
pvscsi_process_msg_ring(struct pvscsi_softc *sc)
{
 struct pvscsi_ring_msg_desc *ring;
 struct pvscsi_rings_state *s;
 struct pvscsi_ring_msg_desc *e;
 uint32_t mask;

 mtx_assert(&sc->lock, MA_OWNED);

 s = sc->rings_state;
 ring = sc->msg_ring;
 mask = MASK(s->msg_num_entries_log2);

 while (s->msg_cons_idx != s->msg_prod_idx) {
  e = ring + (s->msg_cons_idx & mask);

  pvscsi_process_msg(sc, e);

  mb();
  s->msg_cons_idx++;
 }
}
