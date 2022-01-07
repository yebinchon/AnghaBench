
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_rx_ring {scalar_t__ destroyed; int destroyed_lock; } ;


 int rw_rlock (int *) ;
 int rx_ring_unlock (struct sdp_rx_ring*) ;

__attribute__((used)) static inline int rx_ring_trylock(struct sdp_rx_ring *rx_ring)
{
 rw_rlock(&rx_ring->destroyed_lock);
 if (rx_ring->destroyed) {
  rx_ring_unlock(rx_ring);
  return 0;
 }
 return 1;
}
