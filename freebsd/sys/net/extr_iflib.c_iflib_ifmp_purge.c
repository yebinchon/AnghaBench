
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifmp_ring {int can_drain; int drain; int size; } ;
typedef TYPE_1__* iflib_txq_t ;
struct TYPE_3__ {struct ifmp_ring* ift_br; } ;


 int iflib_txq_can_drain ;
 int iflib_txq_drain ;
 int iflib_txq_drain_always ;
 int iflib_txq_drain_free ;
 int ifmp_ring_check_drainage (struct ifmp_ring*,int ) ;

__attribute__((used)) static void
iflib_ifmp_purge(iflib_txq_t txq)
{
 struct ifmp_ring *r;

 r = txq->ift_br;
 r->drain = iflib_txq_drain_free;
 r->can_drain = iflib_txq_drain_always;

 ifmp_ring_check_drainage(r, r->size);

 r->drain = iflib_txq_drain;
 r->can_drain = iflib_txq_can_drain;
}
