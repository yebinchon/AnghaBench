
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_queue {struct nm_csb_ktoa* ktoa; struct nm_csb_atok* atok; } ;
struct nm_csb_ktoa {int kern_need_kick; } ;
struct nm_csb_atok {unsigned int sync_flags; } ;
struct netmap_ring {unsigned int head; unsigned int cur; } ;
struct netmap_kring {unsigned int rcur; unsigned int rhead; struct netmap_ring* ring; } ;


 scalar_t__ NM_ACCESS_ONCE (int ) ;
 int nm_sync_kloop_appl_write (struct nm_csb_atok*,unsigned int,unsigned int) ;
 int ptnet_kick (struct ptnet_queue*) ;

__attribute__((used)) static void
ptnet_ring_update(struct ptnet_queue *pq, struct netmap_kring *kring,
    unsigned int head, unsigned int sync_flags)
{
 struct netmap_ring *ring = kring->ring;
 struct nm_csb_atok *atok = pq->atok;
 struct nm_csb_ktoa *ktoa = pq->ktoa;




 ring->head = ring->cur = head;


 kring->rcur = kring->rhead = head;

 nm_sync_kloop_appl_write(atok, kring->rcur, kring->rhead);


 if (NM_ACCESS_ONCE(ktoa->kern_need_kick)) {
  atok->sync_flags = sync_flags;
  ptnet_kick(pq);
 }
}
