
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_rx_ring {int destroyed; int destroyed_lock; } ;


 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static inline void rx_ring_destroy_lock(struct sdp_rx_ring *rx_ring)
{
 rw_wlock(&rx_ring->destroyed_lock);
 rx_ring->destroyed = 1;
 rw_wunlock(&rx_ring->destroyed_lock);
}
