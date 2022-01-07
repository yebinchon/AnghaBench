
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_iq {int dummy; } ;
struct TYPE_2__ {struct sge_iq fwq; } ;
struct adapter {int intr_count; scalar_t__ intr_type; TYPE_1__ sge; } ;


 int A_PCIE_PF_CLI ;
 scalar_t__ INTR_INTX ;
 int MPASS (int) ;
 int MYPF_REG (int ) ;
 int t4_intr_err (void*) ;
 int t4_intr_evt (struct sge_iq*) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

void
t4_intr_all(void *arg)
{
 struct adapter *sc = arg;
 struct sge_iq *fwq = &sc->sge.fwq;

 MPASS(sc->intr_count == 1);

 if (sc->intr_type == INTR_INTX)
  t4_write_reg(sc, MYPF_REG(A_PCIE_PF_CLI), 0);

 t4_intr_err(arg);
 t4_intr_evt(fwq);
}
