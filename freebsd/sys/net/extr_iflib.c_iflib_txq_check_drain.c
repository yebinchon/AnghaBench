
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* iflib_txq_t ;
struct TYPE_3__ {int ift_br; } ;


 int ifmp_ring_check_drainage (int ,int) ;

__attribute__((used)) static void
iflib_txq_check_drain(iflib_txq_t txq, int budget)
{

 ifmp_ring_check_drainage(txq->ift_br, budget);
}
