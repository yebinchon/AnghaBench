
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_ring {int flags; int ts; } ;


 int NR_TIMESTAMP ;
 int microtime (int *) ;
 scalar_t__ netmap_no_timestamp ;

__attribute__((used)) static inline void
ring_timestamp_set(struct netmap_ring *ring)
{
 if (netmap_no_timestamp == 0 || ring->flags & NR_TIMESTAMP) {
  microtime(&ring->ts);
 }
}
