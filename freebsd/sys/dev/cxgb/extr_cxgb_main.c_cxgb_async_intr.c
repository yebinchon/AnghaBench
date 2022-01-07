
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slow_intr_task; int tq; } ;
typedef TYPE_1__ adapter_t ;


 int A_PL_INT_ENABLE0 ;
 int t3_read_reg (TYPE_1__*,int ) ;
 int t3_write_reg (TYPE_1__*,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
cxgb_async_intr(void *data)
{
 adapter_t *sc = data;

 t3_write_reg(sc, A_PL_INT_ENABLE0, 0);
 (void) t3_read_reg(sc, A_PL_INT_ENABLE0);
 taskqueue_enqueue(sc->tq, &sc->slow_intr_task);
}
