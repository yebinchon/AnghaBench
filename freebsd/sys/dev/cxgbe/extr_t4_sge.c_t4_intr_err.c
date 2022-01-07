
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adapter {int debug_flags; int flags; int swintr; } ;


 int ADAP_ERR ;
 int A_PL_PF_INT_CAUSE ;
 int DF_VERBOSE_SLOWINTR ;
 int F_PFSW ;
 int MYPF_REG (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_slow_intr_handler (struct adapter*,int const) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void
t4_intr_err(void *arg)
{
 struct adapter *sc = arg;
 uint32_t v;
 const bool verbose = (sc->debug_flags & DF_VERBOSE_SLOWINTR) != 0;

 if (sc->flags & ADAP_ERR)
  return;

 v = t4_read_reg(sc, MYPF_REG(A_PL_PF_INT_CAUSE));
 if (v & F_PFSW) {
  sc->swintr++;
  t4_write_reg(sc, MYPF_REG(A_PL_PF_INT_CAUSE), v);
 }

 t4_slow_intr_handler(sc, verbose);
}
