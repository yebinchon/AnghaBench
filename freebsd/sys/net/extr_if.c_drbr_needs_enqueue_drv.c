
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_ring {int dummy; } ;
typedef int if_t ;


 int drbr_needs_enqueue (int ,struct buf_ring*) ;

int
drbr_needs_enqueue_drv(if_t ifh, struct buf_ring *br)
{
 return drbr_needs_enqueue(ifh, br);
}
