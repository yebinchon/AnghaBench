
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int iflib_txq_t ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_4__ {int ifc_txqs; } ;


 int NTXQSETS (TYPE_1__*) ;
 int iflib_txq_setup (int ) ;

__attribute__((used)) static int
iflib_tx_structures_setup(if_ctx_t ctx)
{
 iflib_txq_t txq = ctx->ifc_txqs;
 int i;

 for (i = 0; i < NTXQSETS(ctx); i++, txq++)
  iflib_txq_setup(txq);

 return (0);
}
