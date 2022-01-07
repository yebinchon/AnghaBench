
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct buf_ring {int dummy; } ;
typedef int if_t ;


 int drbr_enqueue (int ,struct buf_ring*,struct mbuf*) ;

int
drbr_enqueue_drv(if_t ifh, struct buf_ring *br, struct mbuf *m)
{
 return drbr_enqueue(ifh, br, m);

}
