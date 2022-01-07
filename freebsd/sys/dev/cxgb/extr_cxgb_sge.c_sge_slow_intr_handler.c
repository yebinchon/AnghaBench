
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int slow_intr_mask; } ;
typedef TYPE_1__ adapter_t ;


 int A_PL_INT_ENABLE0 ;
 int t3_read_reg (TYPE_1__*,int ) ;
 int t3_slow_intr_handler (TYPE_1__*) ;
 int t3_write_reg (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
sge_slow_intr_handler(void *arg, int ncount)
{
 adapter_t *sc = arg;

 t3_slow_intr_handler(sc);
 t3_write_reg(sc, A_PL_INT_ENABLE0, sc->slow_intr_mask);
 (void) t3_read_reg(sc, A_PL_INT_ENABLE0);
}
