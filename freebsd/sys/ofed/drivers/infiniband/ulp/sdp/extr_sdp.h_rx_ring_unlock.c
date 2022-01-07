
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_rx_ring {int destroyed_lock; } ;


 int rw_runlock (int *) ;

__attribute__((used)) static inline void rx_ring_unlock(struct sdp_rx_ring *rx_ring)
{
 rw_runlock(&rx_ring->destroyed_lock);
}
