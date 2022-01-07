
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct netmap_slot {int flags; scalar_t__ len; int buf_idx; } ;
struct netmap_ring {scalar_t__ head; scalar_t__ cur; struct netmap_slot* slot; } ;


 char* NETMAP_BUF (struct netmap_ring*,int ) ;
 int NS_MOREFRAG ;
 int dump_payload (char*,scalar_t__,struct netmap_ring*,scalar_t__) ;
 scalar_t__ nm_ring_next (struct netmap_ring*,scalar_t__) ;
 scalar_t__ nm_ring_space (struct netmap_ring*) ;

__attribute__((used)) static int
receive_packets(struct netmap_ring *ring, u_int limit, int dump, uint64_t *bytes)
{
 u_int head, rx, n;
 uint64_t b = 0;
 u_int complete = 0;

 if (bytes == ((void*)0))
  bytes = &b;

 head = ring->head;
 n = nm_ring_space(ring);
 if (n < limit)
  limit = n;
 for (rx = 0; rx < limit; rx++) {
  struct netmap_slot *slot = &ring->slot[head];
  char *p = NETMAP_BUF(ring, slot->buf_idx);

  *bytes += slot->len;
  if (dump)
   dump_payload(p, slot->len, ring, head);
  if (!(slot->flags & NS_MOREFRAG))
   complete++;

  head = nm_ring_next(ring, head);
 }
 ring->head = ring->cur = head;

 return (complete);
}
