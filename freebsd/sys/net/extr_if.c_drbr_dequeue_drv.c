
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct buf_ring {int dummy; } ;
typedef int if_t ;


 struct mbuf* drbr_dequeue (int ,struct buf_ring*) ;

struct mbuf*
drbr_dequeue_drv(if_t ifh, struct buf_ring *br)
{
 return drbr_dequeue(ifh, br);
}
