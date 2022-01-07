
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring {unsigned int cur; unsigned int dirty; } ;



__attribute__((used)) static inline unsigned int xgbe_rx_dirty_desc(struct xgbe_ring *ring)
{
 return (ring->cur - ring->dirty);
}
