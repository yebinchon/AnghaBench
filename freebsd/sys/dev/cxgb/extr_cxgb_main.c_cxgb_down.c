
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int t3_intr_disable (struct adapter*) ;
 int t3_sge_stop (struct adapter*) ;

__attribute__((used)) static void
cxgb_down(struct adapter *sc)
{
 t3_sge_stop(sc);
 t3_intr_disable(sc);
}
